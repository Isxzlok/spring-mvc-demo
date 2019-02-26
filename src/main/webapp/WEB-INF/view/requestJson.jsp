<%--
  Created by IntelliJ IDEA.
  User: xiongzhilong
  Date: 2019-02-25
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!--<script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>-->
    <script src="${pageContext.request.contextPath}/jquery.js"></script>
    <script type="text/javascript">
        function requestJson(){
            var jsonUser = JSON.stringify({"name":"张三丰","sex":"男","address":"杭州"});
            $.ajax({
                type:'post',
                url:'${pageContext.request.contextPath}/requestJson.do',
                contentType:'application/json;charset=utf-8',
                data:jsonUser,
                success:function(data){
                    alert(data);
                }
            })

        }

    </script>
</head>
<body>

<input type="button" value="请求json，返回json" onclick="requestJson()"/>
</body>
</html>
