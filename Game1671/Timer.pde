public class Timer{
  private int startTime = 0;
  private int stopTime = 0;
  private boolean isRunning = false;
  
  public void start(){
    isRunning = true;
    startTime = millis();
  }
  
  public void stop(){
    stopTime = millis();
    isRunning = false;
  }
  
   private int getElapsedTime() {
        int elapsed;
        if (isRunning) {
             elapsed = (millis() - startTime);
        }
        else {
            elapsed = (stopTime - startTime);
        }
        return elapsed;
    }
    
    public int getSeconds() {
      return (getElapsedTime() / 1000) % 60;
    }
    
    public int getMinutes() {
      return (getElapsedTime() / (1000*60)) % 60;
    }
    
    public int getHours() {
      return (getElapsedTime() / (1000*60*60)) % 24;
    }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
