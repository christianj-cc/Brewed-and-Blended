package menus;

import java.awt.Dimension;
import java.awt.Toolkit;
import javax.swing.ImageIcon;
import javax.swing.JFrame;

public abstract class CafeWindow extends JFrame {
    public abstract void displayWindow();
    public abstract void closeWindow();

    public void initializeWindow(JFrame frame) {
        // Set icon image for the program
        ImageIcon img = new ImageIcon("src/assets/icon.png");
        frame.setIconImage(img.getImage());
        
        // Center window while running
        Dimension dimension = Toolkit.getDefaultToolkit().getScreenSize();
        int x = (int) ((dimension.getWidth() - frame.getWidth()) / 2);
        int y = (int) ((dimension.getHeight() - frame.getHeight()) / 2 - 25);
        frame.setLocation(x, y); // Directly sets the location for the current frame
    }
}
