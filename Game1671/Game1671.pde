// M A I N  F I L E

// V A R I A B L E S ----------------------------------------
Robot bot;

//R U N S  O N C E ----------------------------------------------
void setup(){
   size(1920, 1080);
   background(0);
   bot = new Robot(); //creating object
}

//R U N S  C O N S T A N T L Y -------------------------------------------
void draw(){
  bot.drawRobot();
}
