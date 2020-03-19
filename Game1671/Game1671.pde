//whatever you do, don't push to master or merge into master without first having your code reviewed
//hi

Environment env = new Environment();

//The main initializer for a controller
ControlIO control;
// Sets up a Var for the actual controller
ControlDevice device;

void setup() {
  size(192, 108);
  
  control = ControlIO.getInstance(this);
  device = control.getMatchedDevice("controllerConfig");
}

void draw() {
  env.drawEnvironment();
  
  Robot_Controls controls = new Robot_Controls();
  controls.useController();
}
