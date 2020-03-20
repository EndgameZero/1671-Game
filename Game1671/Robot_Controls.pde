//this is where robot control stuff goes for now
//libraries for Contoller
import net.java.games.input.*;
import org.gamecontrolplus.*;
import org.gamecontrolplus.gui.*;

public class Robot_Controls {   
    public void useController() {
      System.out.println(device.getSlider("LHorizontal").getValue());
      System.out.println(device.getSlider("LVertical1").getValue());
    }
  
}  
