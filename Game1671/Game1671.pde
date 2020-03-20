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

void setup() {
  size(1920, 1080);
  control = ControlIO.getInstance(this);
  device = control.getMatchedDevice("controllerConfig");
  env.setupEnvironment();
  
  px = 500;
  py = 500;
}

void draw() {
  
  background(#B7DD45);
  env.drawField();
  if(!env.isInField(px, py)){
    background(#EB3092);
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
