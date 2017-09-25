/**
 * Background Subtraction 
 * by Golan Levin. 
 *
 * Detect the presence of people and objects in the frame using a simple
 * background-subtraction technique. To initialize the background, press a key.
 */


import processing.video.*;
import netP5.*;
import oscP5.*;

static final int MAPMAP_OSC_RECEIVE_PORT = 12345; // MapMap's default OSC receive port.
static final String OSC_ADDR_SEND_HOST = "localhost";
static final int MAPMAP_MEDIA_ID = 2; // The source in MapMap
static final int FPS = 5;
static final int moveTrig = 700000000;
boolean save_to_mapmap_enabled = true; // let's enable it by default
int current_frame_number = 0;
static final int OSC_ADDR_RECV_PORT = 18939; // useless
OscP5 oscP5;
NetAddress address_to_send_to;
int numPixels;
int[] backgroundPixels;
int movement;
Capture video;

void setup() {
  size(320, 240); 
  frameRate(FPS);
  oscP5 = new OscP5(this, OSC_ADDR_RECV_PORT);
  address_to_send_to = new NetAddress(OSC_ADDR_SEND_HOST, MAPMAP_OSC_RECEIVE_PORT);
  
  // This the default video input, see the GettingStartedCapture 
  // example if it creates an error
  //video = new Capture(this, 160, 120);,g
  video = new Capture(this, width, height, "/dev/video1");
  
  // Start capturing the images from the camera
  video.start();  
  
  numPixels = video.width * video.height;
  // Create array to store the background image
  backgroundPixels = new int[numPixels];
  // Make the pixels[] array available for direct manipulation
  loadPixels();
}

String make_frame_file_name()
{
  current_frame_number = (current_frame_number + 1) % 10;
  return "/tmp/to_mapmap_" + current_frame_number + ".jpg";
}

void draw() {
  if (video.available()) {
    video.read(); // Read a new video frame
    video.loadPixels(); // Make the pixels of video available
    // Difference between the current frame and the stored background
    int presenceSum = 0;
    for (int i = 0; i < numPixels; i++) { // For each pixel in the video frame...
      // Fetch the current color in that location, and also the color
      // of the background in that spot
      color currColor = video.pixels[i];
      color bkgdColor = backgroundPixels[i];
      // Extract the red, green, and blue components of the current pixel's color
      int currR = (currColor >> 16) & 0xFF;
      int currG = (currColor >> 8) & 0xFF;
      int currB = currColor & 0xFF;
      // Extract the red, green, and blue components of the background pixel's color
      int bkgdR = (bkgdColor >> 16) & 0xFF;
      int bkgdG = (bkgdColor >> 8) & 0xFF;
      int bkgdB = bkgdColor & 0xFF;
      // Compute the difference of the red, green, and blue values
      int diffR = abs(currR - bkgdR);
      int diffG = abs(currG - bkgdG);
      int diffB = abs(currB - bkgdB);
      // Add these differences to the running tally
      presenceSum += diffR + diffG + diffB;
      movement = presenceSum;
      // Render the difference image to the screen
      pixels[i] = color(diffR, diffG, diffB);
      // The following line does the same thing much faster, but is more technical
      //pixels[i] = 0xFF000000 | (diffR << 16) | (diffG << 8) | diffB;
    }
    updatePixels(); // Notify that the pixels[] array has changed
    println(presenceSum); // Print out the total amount of movement
  }
  if (save_to_mapmap_enabled)
  {
    String file_name = make_frame_file_name();
    saveFrame(file_name);
    send_mapmap_load_media(MAPMAP_MEDIA_ID, file_name);
  }
  if (movement > moveTrig) {
    video.loadPixels();
    arraycopy(video.pixels, backgroundPixels);
  }
}

void send_mapmap_load_media(int media_id, String file_name)
{   
  OscMessage myMessage = new OscMessage("/mapmap/paint/uri");
  myMessage.add(media_id);
  myMessage.add(file_name);
  oscP5.send(myMessage, address_to_send_to); 
}

void toggle_save_to_mapmap()
{
  save_to_mapmap_enabled = ! save_to_mapmap_enabled;
}

// When a key is pressed, capture the background image into the backgroundPixels
// buffer, by copying each of the current frame's pixels into it.
void keyPressed() {
  switch(key){
    case 's':
      toggle_save_to_mapmap();
      break;
    default:
      video.loadPixels();
      arraycopy(video.pixels, backgroundPixels);
  }
}