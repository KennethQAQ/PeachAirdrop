<%@ page import="java.awt.datatransfer.Clipboard" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.awt.datatransfer.DataFlavor" %>
<%@ page import="java.awt.datatransfer.UnsupportedFlavorException" %><%--
  Created by IntelliJ IDEA.
  User: MisakaMisaka
  Date: 2022/5/31
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>剪切板获取</title>
    <script src="https://cdn.jsdelivr.net/npm/clipboard@2.0.10/dist/clipboard.min.js"></script>
</head>
<% Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
    String text;
    try{
        text = (String) clipboard.getData(DataFlavor.stringFlavor);
    }
    catch (UnsupportedFlavorException e) {
        text = "在此处黏贴剪切板内容";
    }
%>
<body>
<form method="post" action="ClipboardServlet">
    <textarea  id="bar" name="bar" rows="10" cols="30">
        <%=text%>
    </textarea>
    <button class="btn" data-clipboard-action="copy" data-clipboard-target="#bar">
        复制内容到剪切板
    </button>
    <input type="submit" value="黏贴内容到PC剪切板"/>
</form>
<script type="text/javascript" src="ReadClip.js"></script>
<script>
    var clipboard = new ClipboardJS('.btn');
</script>

</body>
</html>
