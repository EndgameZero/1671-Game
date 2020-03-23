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
  public void MoveR(){
      StartX = StartX + 20;
  }
  
    //function for moving Down
  public void MoveD(){
      StartY = StartY + 20;
  }
  //function for moving Up
  public void MoveU(){
      StartY = StartY - 20;
  }
  
  //function for moving Left
  public void MoveL(){
      StartX = StartX - 20;
  }
  
  //function for moving diagonally left
  public void MoveDiagL(){
      StartY = StartY - 20;
      StartX = StartX - 20;
  }
 
  //function for moving diagonally Left Top
  public void MoveDiagLtop(){
      StartY = StartY - 20;
      StartX = StartX - 20;
  }
   //function for moving diagonally Right Top
  public void MoveDiagRtop(){
      StartY = StartY - 20;
      StartX = StartX + 20;     
    }
    
  //function for moving diagonally Left Below
  public void MoveDiagLbelow(){
      StartY = StartY + 20;
      StartX = StartX - 20;  
   
  }
  
  //function for moving diagonally Right Below
  public void MoveDiagRbelow(){
      StartY = StartY + 20;
      StartX = StartX + 20;
  }
}
