
public class Environment {  
  
  private float feet = 30.0;//px/ft
  private float offset = 50;//px
  
  private PVector[] fieldVertices;
  
  public Environment(){
    fieldVertices = new PVector[8];
  }
  
  public void setupEnvironment(){
    fieldVertices [0] = new PVector(offset + 3*feet, offset); //top left
    fieldVertices [1] = new PVector(fieldVertices[0].x - 2.5*feet, fieldVertices[0].y + 6*feet); //topmidleft
    fieldVertices [2] = new PVector(fieldVertices[1].x, fieldVertices[1].y + 15*feet);//bottommidleft
    fieldVertices [3] = new PVector(fieldVertices[2].x + 2.5*feet, fieldVertices[2].y +6*feet);//bottomleft
    fieldVertices [4] = new PVector(fieldVertices[3].x + 47*feet, fieldVertices[3].y);//bottomright
    fieldVertices [5] = new PVector(fieldVertices[4].x + 2.5*feet, fieldVertices[4].y - 6*feet);//bottommidright
    fieldVertices [6] = new PVector(fieldVertices[5].x, fieldVertices[5].y - 15*feet);//topmidright
    fieldVertices [7] = new PVector(fieldVertices[6].x - 2.5*feet, fieldVertices[6].y - 6*feet); //top right
  }
 
 
 
 public boolean isInField(float x, float y){
   boolean isColliding = false;
   
   int nextVertice = 0;
   for(int currentVertice = 0; currentVertice < fieldVertices.length; currentVertice++){
     nextVertice = currentVertice+1;
     if(nextVertice == fieldVertices.length){
       nextVertice = 0;
     }
     
     PVector current = fieldVertices[currentVertice];
     PVector next = fieldVertices[nextVertice];
     
     if (((current.y >= y && next.y < y) || (current.y < y && next.y >= y)) && (x < (next.x-current.x)*(y-current.y) / (next.y-current.y)+current.x)) {
            isColliding = !isColliding;
    }
   }
   return isColliding;
 }
 
 public PVector putPointOnLeftAutoLine(PVector point, float feetFromTop){
   point.x = fieldVertices[1].x + 10 * feet;
   point.y = fieldVertices [0].y + feetFromTop*feet;
   return point;
 }
 
 public PVector putPointOnRightAutoLine(PVector point, float feetFromTop){
   point.x = fieldVertices[6].x - 10 * feet;
   point.y = fieldVertices [0].y + feetFromTop*feet;
   return point;
 }
  
  public void drawField(){
    //perimeter lines
    stroke(0, 0, 0);
    strokeWeight(6);
    line(fieldVertices[0].x, fieldVertices[0].y, fieldVertices[1].x, fieldVertices[1].y);
    line(fieldVertices[1].x, fieldVertices[1].y, fieldVertices[2].x, fieldVertices[2].y);
    line(fieldVertices[2].x, fieldVertices[2].y, fieldVertices[3].x, fieldVertices[3].y);
    line(fieldVertices[3].x, fieldVertices[3].y, fieldVertices[4].x, fieldVertices[4].y);
    line(fieldVertices[4].x, fieldVertices[4].y, fieldVertices[5].x, fieldVertices[5].y);
    line(fieldVertices[5].x, fieldVertices[5].y, fieldVertices[6].x, fieldVertices[6].y);
    line(fieldVertices[6].x, fieldVertices[6].y, fieldVertices[7].x, fieldVertices[7].y);
    line(fieldVertices[7].x, fieldVertices[7].y, fieldVertices[0].x, fieldVertices[0].y);
    
    //auto lines
    stroke(0, 0, 0);
    strokeWeight(.16*feet);
    line(fieldVertices[1].x + 10*feet, fieldVertices[0].y, fieldVertices[1].x + 10*feet, fieldVertices[3].y);
    line(fieldVertices[6].x - 10*feet, fieldVertices[0].y, fieldVertices[6].x - 10*feet, fieldVertices[3].y);
    
    //trench lines 17 4.5
    stroke(255, 0, 0);
    line(fieldVertices[1].x + 17*feet, fieldVertices[0].y, fieldVertices[1].x + 17*feet, fieldVertices[0].y + 4.5*feet);
    line(fieldVertices[1].x + 17*feet, fieldVertices[0].y + 4.5*feet, fieldVertices[6].x - 17*feet, fieldVertices[0].y + 4.5*feet);
    line(fieldVertices[6].x - 17*feet, fieldVertices[0].y + 4.5*feet, fieldVertices[6].x - 17*feet, fieldVertices[0].y);
    stroke(0, 0, 255);
    line(fieldVertices[1].x + 17*feet, fieldVertices[3].y, fieldVertices[1].x + 17*feet, fieldVertices[3].y - 4.5*feet);
    line(fieldVertices[1].x + 17*feet, fieldVertices[3].y - 4.5*feet, fieldVertices[6].x - 17*feet, fieldVertices[3].y - 4.5*feet);
    line(fieldVertices[6].x - 17*feet, fieldVertices[3].y - 4.5*feet, fieldVertices[6].x - 17*feet, fieldVertices[3].y);
    
    //reset color
    stroke(0,0,0);
    strokeWeight(1);
  }
  
  
  
  
  
  
}
