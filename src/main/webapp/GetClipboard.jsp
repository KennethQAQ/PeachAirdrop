<%--
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
</head>
<body>
<script type="text/javascript" src="ReadClip.js"></script>
<script>
    const clipboard = navigator.clipboard;
    let text;
    function readClipText(){
        var clipPromise = navigator.clipboard.readText();
        clipPromise.then(function(clipText){
            alert(clipText);
            document.write(clipText);

        });

    }
</script>
<button type="button" onclick="readClipText()">读取剪切板内容</button>
<form method="post" action="ClipboardServlet" enctype="multipart/form-data">
    <br/><br/>
    <input type="submit" value="传输剪切板内容"/>
</form>

</body>
</html>
