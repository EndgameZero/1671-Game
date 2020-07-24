import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import net.java.games.input.*; 
import org.gamecontrolplus.*; 
import org.gamecontrolplus.gui.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Game1671 extends PApplet {

//whatever you do, don't push to master or merge into master without first having your code reviewed
//hi

Environment env = new Environment();
Robot_Controls controls = new Robot_Controls();

//The main initializer for a controller
ControlIO control;
// Sets up a Var for the actual controller
ControlDevice device;
float LX;
float LY;

float px;
float py;

float sped = 5;
float spedY = 10;

public void setup() {
  
  control = ControlIO.getInstance(this);
  device = control.getMatchedDevice("controllerConfig");
  env.setupEnvironment();
  
  px = 500;
  py = 500;
}

public void draw() {
  
  background(0xffB7DD45);
  env.drawField();
  if(!env.isInField(px, py)){
    background(0xffEB3092);
    env.drawField();
    
    LX *= -1;
    LY*= -1;
  }
  
  rect(px, py, 90, 90);
  
  px+= LX * 4;
  py+= LY * 4;
  
  
  LX = controls.getLX();
  LY = controls.getLY();

}

public class Environment {  
  
  private float feet = 30.0f;//px/ft
  private float offset = 50;//px
  
  public PVector[] fieldVertices;
  
  public Environment(){
    fieldVertices = new PVector[8];
  }
  
  public void setupEnvironment(){
    fieldVertices [0] = new PVector(offset + 3*feet, offset); //top left
    fieldVertices [1] = new PVector(fieldVertices[0].x - 2.5f*feet, fieldVertices[0].y + 6*feet); //topmidleft
    fieldVertices [2] = new PVector(fieldVertices[1].x, fieldVertices[1].y + 15*feet);//bottommidleft
    fieldVertices [3] = new PVector(fieldVertices[2].x + 2.5f*feet, fieldVertices[2].y +6*feet);//bottomleft
    fieldVertices [4] = new PVector(fieldVertices[3].x + 47*feet, fieldVertices[3].y);//bottomright
    fieldVertices [5] = new PVector(fieldVertices[4].x + 2.5f*feet, fieldVertices[4].y - 6*feet);//bottommidright
    fieldVertices [6] = new PVector(fieldVertices[5].x, fieldVertices[5].y - 15*feet);//topmidright
    fieldVertices [7] = new PVector(fieldVertices[6].x - 2.5f*feet, fieldVertices[6].y - 6*feet); //top right
  }
 
 
 public boolean isInField(float x, float y){
   boolean isColliding = false;
   
   int nextVertice = 0;
   for(int currentVertice = 0; currentVertice < fieldVertices.length; currentVertice++){
     nextVertice = currentVertice+1;
     if(nextVertice == fieldVertices.length){
       nextVertice = 0;
     }
     
     PVector current = fieldVertices[currentVertice];
     PVector next = fieldVertices[nextVertice];
     
     if (((current.y >= y && next.y < y) || (current.y < y && next.y >= y)) && (x < (next.x-current.x)*(y-current.y) / (next.y-current.y)+current.x)) {
            isColliding = !isColliding;
    }
   }
   return isColliding;
 }
  
  public void drawField(){
    line(fieldVertices[0].x, fieldVertices[0].y, fieldVertices[1].x, fieldVertices[1].y);
    line(fieldVertices[1].x, fieldVertices[1].y, fieldVertices[2].x, fieldVertices[2].y);
    line(fieldVertices[2].x, fieldVertices[2].y, fieldVertices[3].x, fieldVertices[3].y);
    line(fieldVertices[3].x, fieldVertices[3].y, fieldVertices[4].x, fieldVertices[4].y);
    line(fieldVertices[4].x, fieldVertices[4].y, fieldVertices[5].x, fieldVertices[5].y);
    line(fieldVertices[5].x, fieldVertices[5].y, fieldVertices[6].x, fieldVertices[6].y);
    line(fieldVertices[6].x, fieldVertices[6].y, fieldVertices[7].x, fieldVertices[7].y);
    line(fieldVertices[7].x, fieldVertices[7].y, fieldVertices[0].x, fieldVertices[0].y);
  }
  
}
//this is where physics stuff goes for now
public class Physics {
  double acc;
  double vel;
  double xPos;
  double yPos;
}
//this is where robot control stuff goes for now
//libraries for Contoller




public class Robot_Controls {   

    public float getLX(){
      return device.getSlider("LHorizontal").getValue();
    }
    public float getLY(){
      return device.getSlider("LVertical1").getValue();

    }
}
  public void settings() {  size(1920, 1080); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Game1671" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
