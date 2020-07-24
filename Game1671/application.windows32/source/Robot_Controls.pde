//this is where robot control stuff goes for now
//libraries for Contoller
import net.java.games.input.*;
import org.gamecontrolplus.*;
import org.gamecontrolplus.gui.*;

public class Robot_Controls {   

    public float getLX(){
      return device.getSlider("LHorizontal").getValue();
    }
    public float getLY(){
      return device.getSlider("LVertical1").getValue();

    }
}
