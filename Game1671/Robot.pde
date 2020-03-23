// File to code for the Robot
//move
//shoot
//intake
public class Robot{
  float StartX = 100;
  float StartY = 100;
 
  public Robot (){
    }
    
  public void drawRobot() {
    fill(200,0,210);
    background(0);
    rect(StartX, StartY,200,200);
  }
  
  public void intake(){
  }
  
  public void shoot(){
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
