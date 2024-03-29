<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8" />
      <meta http-equiv="Content-Style-Type" content="text/css" />
      <meta http-equiv="Content-Script-Type" content="text/javascript" />
      <meta http-equiv="imagetoolbar" content="no" />
      <meta name="description" content="" />
      <meta name="keywords" content="" />
<title>AdminList</title>
<style type="text/css">
/*============TAG LAYOUT==========*/
body{
margin:0;
padding:0;
line-height:1.6;
letter-spacing:1px;
font-family:Verdana, Helvetica, sans-serif;
font-size:12px;
color:#333;
background:#fff;
}
table{
text-align :center;
margin:0 auto;
}
/*========= ID LAYOUT=========*/
#top{
width:780px;
margin:30px auto;
border:1px solid #333;
}
#header {
width:100%;
height:80px;
background-color: black;
}
#main{
width: 100%;
height:500px;
text-align: center;
}
#footer{
width:100%;
height:80px;
background-color:black;
clear:both;
}
#text-right {
display: inline-block;
text-align: right;
}
</style>
</head>
<body>
            <div id="main">
              <div id="top">
                 <p>AdminList</p>
              </div>
              <div>
                 <s:if test="adminInfoDTOList== null">
                 <h3>登録情報なし</h3>
              </s:if>
              <s:elseif test="message == null">
              <h3>管理者登録情報</h3>
              <table border="1">
              <tr>
                 <th>ID</th>
                 <th>PASSWORD</th>
                 <th>ユーザー名</th>
                 <th>更新日</th>
                 <th>管理者権限</th>
              </tr>
              <s:iterator value="adminInfoDTOList">
              <tr>
                 <td><s:property value="login_id" /></td>
                 <td><s:property value="login_pass" /></td>
                 <td><s:property value="user_name" /></td>
                 <td><s:property value="insert_date" /></td>
                 <td><s:property value="admin_Flg ="/><span>有</span></td> <%-- ＝削除 数値表示 --%>
              </tr>
              </s:iterator>
             </table> <br>
                <s:form action="AdminListDeleteConfirmAction">
                <input type="hidden" name="deleteFlg" value="1">
                <s:submit value="削除" />
                </s:form>
             </s:elseif>
             <s:if test="message ! =null">
             </s:if>
              </div>
            </div>
</body>
</html>