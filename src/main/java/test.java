import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.io.IOException;

public class test {
    public static void main(String[] args) throws IOException, UnsupportedFlavorException {
        Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
        String[] strings = new String[2];
        int i = 0;
        strings[i] = (String) clipboard.getData(DataFlavor.stringFlavor);
        while (true) {
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            i = (i + 1) % 2;
            strings[i] = (String) clipboard.getData(DataFlavor.stringFlavor);
            if (!strings[0].equals(strings[1])) {
                System.out.println(strings[i]);
            }
            if ("over".equals(strings[i])) {
                break;
            }
        }

    }
}
