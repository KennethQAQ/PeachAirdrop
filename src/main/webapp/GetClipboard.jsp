<%@ page import="java.awt.datatransfer.UnsupportedFlavorException" %>
<%@ page import="java.awt.datatransfer.DataFlavor" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.awt.datatransfer.Clipboard" %><%--
  Created by IntelliJ IDEA.
  User: MisakaMisaka
  Date: 2022/5/28
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取剪切板</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="style.css"/>
    <script src="https://cdn.jsdelivr.net/npm/clipboard@2.0.10/dist/clipboard.min.js"></script>
</head>
<% Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
    String text;
    text = (String) clipboard.getData(DataFlavor.stringFlavor);
    if(text==null){
        text="在此处黏贴剪切板内容";
    }


%>
<body>
<script type="text/javascript" src="ReadClip.js"></script>
<script>
    var clipboard = new ClipboardJS('.btn');
</script>
<form method="post" action="ClipboardServlet">
    <textarea  id="bar" name="bar" rows=30 cols="45">
        <%=text%>
    </textarea>
    <button class="btn" data-clipboard-action="copy" data-clipboard-target="#bar" id="btn">
        复制
    </button>
    <input type="submit" value="黏贴" id="btn"/>
</form>

</body>
</html>
