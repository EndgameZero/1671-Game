// M A I N  F I L E

Robot bot;
void setup(){
   size(1920, 1080);
   background(0);
   bot = new Robot();
   
}

void draw(){
  bot.drawRobot();
}
