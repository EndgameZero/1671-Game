//this is where robot control stuff goes for now
//libraries for Contoller
import net.java.games.input.*;
import org.gamecontrolplus.*;
import org.gamecontrolplus.gui.*;

public class Robot_Controls {  
  
    //The main initializer for a controller
    ControlIO control;
    // Sets up a Var for the actual controller
    ControlDevice device;
  
    //begins looking for controllers
    device = control.getMatchedDevice("controllerConfig");
    
    public void useController() {
      System.out.println(device.getSlider("LEFTX").getValue());
      //System.out.println(device.getSlider("LEFTY").getValue());
    }
  
}  
