<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8" />
      <meta http-equiv="Content-Style-Type" content="text/css" />
      <meta http-equiv="Content-Script-Type" content="text/javascript" />
      <meta http-equiv="imagetoolbar" content="no" />
      <meta name="description" content="" />
      <meta name="keywords" content="" />
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>AdminListDeleteConfirm</title>
 <style type="text/css">

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

          <script type="text/javascript">
          function submitAction(url){
        	  $('form').attr('action', url);
        	  $('form').submit();
          }
          </script>
</head>
<body>
      <div id="main">
         <div id="top">
         <p>すべての管理者を削除します。よろしいですか？</p>
         </div>

         <s:form>

                   <tr>
                    <td><input type="button" value="OK"
                    onclick="submitAction('AdminListDeleteCompleteAction')"/></td>

                    <td><input type="button" value="キャンセル"
                    onclick="submitAction('AdminListAction')" /></td>
                   </tr>
      </s:form>
      </div>

</body>
</html>