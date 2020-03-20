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

void setup() {
  size(1920, 1080);
  control = ControlIO.getInstance(this);
  device = control.getMatchedDevice("controllerConfig");
  env.setupEnvironment();
  
  px = 500;
  py = 500;
}

void draw() {
  
  background(#DDDDDD);
  env.drawField();
  if(!env.isInField(px, py)){
    background(255, 0,0);
    env.drawField();
  }
  
  rect(px, py, 45, 45);
  
  px+= LX * 4;
  py+= LY * 4;
  
  
  LX = controls.getLX();
  LY = controls.getLY();
  
}
