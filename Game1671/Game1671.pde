//whatever you do, don't push to master or merge into master without first having your code reviewed
//hi


Environment env = new Environment();

void setup() {
  size(2537, 1305);
  env.envSetup();
}

void draw() {
  env.drawEnvironment();
}
