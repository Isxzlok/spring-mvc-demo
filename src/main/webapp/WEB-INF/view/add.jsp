<%--
  Created by IntelliJ IDEA.
  User: xiongzhilong
  Date: 2019-02-25
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<>
<form action="${pageContext.request.contextPath}/receiveStr.do" method="get">
    id:<input type="text" name="id"/>
    name:<input type="text" name="sss"/>
    <input type="submit" value="提交"/>
</form>

</br>

<form action="${pageContext.request.contextPath}/receivePoJo.do" method="post">
   姓名：<input type="text" name="name"/>
    年龄：<input type="text" name="age"/>
    性别:<input type="text" name="sex"/>
    地址：<input type="text" name="address"/>
    <input type="submit" value="提交"/>
</form>

<br/>
<form action="${pageContext.request.contextPath}/receiveArr.do" method="post">
    <input type="checkbox" name="a1" value="1"/>
    <input type="checkbox" name="a1" value="2"/>
    <input type="checkbox" name="a1" value="3"/>
    <input type="submit" value="提交"/>
</form>


</body>
</html>
