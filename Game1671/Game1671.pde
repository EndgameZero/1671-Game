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

float px = 500;
float py = 500;

float robotH = 90;
float robotW = 90;


void setup() {
  size(1280, 720);
  control = ControlIO.getInstance(this);
  device = control.getMatchedDevice("controllerConfig");
  env.setupEnvironment();
}

void draw() {
  
  background(#DDDDDD);
  env.drawEnvironment();
  //if(!env.isInField(px, py)){
  //  background(255, 0,0);
  //  env.drawField();
    
  //  LX*=-1;
  //  LY*=-1;
  //}
  float position[] = env.keepInBounds(px, py, robotW, robotH);
  
  rect(position[0] - 45, position[1] - 45, robotH, robotW);
  
  //if(py + robotH/2 > env.fieldVertices[3].y){
  //  py = env.fieldVertices[3].y - robotH/2;
  //}
  
  //if(py - robotH/2 < env.fieldVertices[0].y){
  //  py = env.fieldVertices[0].y + robotH/2;
  //}
  
  //if(px - robotW/2 < env.fieldVertices[1].x){
  //  px = env.fieldVertices[1].x + robotW/2;
  //}
  
  //if(px + robotW/2 > env.fieldVertices[6].x){
  //  px = env.fieldVertices[6].x - robotW/2;
  //}
  
  
    
  px+= LX * 10;
  py+= LY * 10;
  
  LX = controls.getLX();
  LY = controls.getLY();
  
  
}
