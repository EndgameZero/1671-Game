//whatever you do, don't push to master or merge into master without first having your code reviewed
//hi

Environment env = new Environment();

void setup() {
  size(1920, 1080);
  = ControlIO.getInstance(this);
}

void draw() {
  env.drawEnvironment();
}
