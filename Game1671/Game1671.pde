//whatever you do, don't push to master or merge into master without first having your code reviewed
//hi

Environment env = new Environment();

void setup() {
  Robot_Controls controls = new Robot_Controls();
  
  size(192, 108);
  controls.control = ControlIO.getInstance(this);
}

void draw() {
  env.drawEnvironment();
  
  Robot_Controls controls = new Robot_Controls();
  controls.useController();
}
