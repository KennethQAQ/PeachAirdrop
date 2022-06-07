import android.content.*;
import android.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.datatransfer.*;
import java.io.IOException;

import static android.content.Context.CLIPBOARD_SERVICE;

public class ClipboardServlet extends HttpServlet {
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws ServletException, IOException {
        // Servlet 代码
    }
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
            throws ServletException, IOException {
        // Servlet 代码
        Clipboard sysClip = Toolkit.getDefaultToolkit().getSystemClipboard();
        Clipboard clipboard = new Clipboard("clip");
        String[] strings = new String[2];
        //int i = 0;
        try {
            strings[0] = (String) clipboard.getData(DataFlavor.stringFlavor);
            System.out.println(strings[0]);
            //i = (i + 1) % 2;
            Transferable Text = new StringSelection(strings[0]);
            sysClip.setContents(Text,null);
            strings[1] = (String) sysClip.getData(DataFlavor.stringFlavor);
            System.out.println(strings[1]);


        } catch (UnsupportedFlavorException e) {
            e.printStackTrace();
        }



    }

}
