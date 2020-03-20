//whatever you do, don't push to master or merge into master without first having your code reviewed
//hi


Environment env = new Environment();
  


void setup() {
  size(1920, 1080);
  env.setupthis();
}

void draw() {
  background(#CCD828);
  env.drawField();
  
  boolean isHit = env.isInField(mouseX, mouseY);
  if (isHit){background(#FFFFFF); env.drawField();};
  
}
