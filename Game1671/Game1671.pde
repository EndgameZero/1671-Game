//whatever you do, don't push to master or merge into master without first having your code reviewed
//hi

Environment env = new Environment();
//Robot_Controls controls = new Robot_Controls();


//ControlIO control;

//ControlDevice device;

void setup() {
  size(1920, 1080);
  env.setupthis();
  
  //control = ControlIO.getInstance(this);
  //device = control.getMatchedDevice("controllerConfig");
}

void draw() {
  background(#CCD828);
  env.drawField();
  System.out.println(env.isInField(mouseX, mouseY));
}
