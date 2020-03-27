//R O B O T  F I L E -  C O D I N G  M O V E M E N T / I N T A K E / S H O O T I N G

//waiting on everything on robot controls, environment, and even physics to get done before we proceed with intake and shooting. Also, we are waiting on movement implementation.
public class Robot{
  // V A R I A B L E S -----------------------------------
  float StartX = 100;
  float StartY = 100;
  
  // C O N S T U C T O R ----------------------------------
  public Robot (){
    }
  
  // F I L E S  M A I N  M E T H O D ------------------------------
  public void drawRobot() {
    fill(200,0,210);
    background(0);
    rect(StartX, StartY,200,200);
  }
  
  // I N T A K E  M E T H O D --------------------------------------------------
  public void robotIntake(){
  }
  
  
  // S H O O T  M E T H O D ----------------------------------------------------
  public void robotShoot(){
  }
  
  
  //M O V E M E N T  M E T H O D ---------------------------------------------------------
  public void robotMovement(){
   
  

  }
  
  
  //function for moving Right
  public void MoveR(float X){
      StartX = StartX + X;
  }
  
    //function for moving Down
  public void MoveD(float Y){
      StartY = StartY + Y;
  }
  //function for moving Up
  public void MoveU(float Y){
      StartY = StartY - Y;
  }
  
  //function for moving Left
  public void MoveL(float X){
      StartX = StartX - X;
  }
  
  //function for moving diagonally left
  public void MoveDiagL(float X, float Y){
      StartY = StartY - Y;
      StartX = StartX - X;
  }
 
  //function for moving diagonally Left Top
  public void MoveDiagLtop(float X, float Y){
      StartY = StartY - Y;
      StartX = StartX - X;
  }
   //function for moving diagonally Right Top
  public void MoveDiagRtop(float X, float Y){
      StartY = StartY - Y;
      StartX = StartX + X;     
    }
    
  //function for moving diagonally Left Below
  public void MoveDiagLbelow(float X, float Y){
      StartY = StartY + Y;
      StartX = StartX - X;  
   
  }
  
  //function for moving diagonally Right Below
  public void MoveDiagRbelow(float X, float Y){
      StartY = StartY + Y;
      StartX = StartX + X;
  }
}
