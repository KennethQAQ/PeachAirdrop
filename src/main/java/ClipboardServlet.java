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
        request.setCharacterEncoding("utf-8");
        String content = request.getParameter("bar");
        System.out.println(content);
        Clipboard sysClip = Toolkit.getDefaultToolkit().getSystemClipboard();
        Transferable tText = new StringSelection(content);
        sysClip.setContents(tText,null);
    }
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
            throws ServletException, IOException {
        // Servlet 代码
        doGet(request,response);
        request.getRequestDispatcher("/GetClipboard.jsp").forward(request,response);

    }


}
