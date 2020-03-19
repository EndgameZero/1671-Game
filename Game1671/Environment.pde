
public class Environment {  
  
  private float feet = 30.0;//px/ft
  private float offset = 50;//px
  private PVector topLeft = new PVector(offset + 2.5*feet, offset);
  private PVector topRight = new PVector(topLeft.x + 47.4735*feet, topLeft.y);
  private PVector topMidLeft = new PVector(topLeft.x - 2.5*feet, topLeft.y + 5.83*feet);
  private PVector bottomMidLeft = new PVector(topMidLeft.x, topMidLeft.y + 15.16*feet);
  private PVector bottomLeft = new PVector(bottomMidLeft.x + 2.5*feet, bottomMidLeft.y + 5.83*feet);
  private PVector bottomRight = new PVector(bottomLeft.x + 47.4375*feet, bottomLeft.y);
  private PVector bottomMidRight = new PVector(bottomRight.x + 2.5*feet, bottomRight.y - 5.83*feet);
  private PVector topMidRight = new PVector(bottomMidRight.x, bottomMidRight.y - 15.16*feet);
  
  
  public Environment(){
  
  }
  
  public void drawEnvironment() {

  }  
  
  public void drawField(){
    //topline
    line(topLeft.x, topLeft.y, topRight.x, topRight.y);
    //right top slant
    line(topLeft.x, topLeft.y, topMidLeft.x, topMidLeft.y);
    //left straight
    line(topMidLeft.x, topMidLeft.y, bottomMidLeft.x, bottomMidLeft.y);
    //left bottom slant
    line(bottomMidLeft.x, bottomMidLeft.y, bottomLeft.x, bottomLeft.y);
    //bottomline
    line(bottomLeft.x, bottomLeft.y, bottomRight.x, bottomRight.y);
    //bottom right slant
    line(bottomRight.x, bottomRight.y, bottomMidRight.x, bottomMidRight.y);
    //right straight
    line(bottomMidRight.x, bottomMidRight.y, topMidRight.x, topMidRight.y);
    //top right slant
    line(topMidRight.x, topMidRight.y, topRight.x, topRight.y);
    
  }
  
}
