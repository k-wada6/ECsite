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
<title>管理者画面</title>
 <style type="text/css">

          body{
          margin:0;
          padding:0;
          line-height:1.6;
          letter-spacing:1px;
          font-family:Verdana,Helvetica,sans-serif;
          font-size:12px;
          color:#333;
          background:#fff;
          }
          table{
          text-align:center;
          margin:0 auto;
          }
          /*=========ecsite LAYOUT==========*/
          #top{
          widht:780px;
          margin:0px auto;
          border:1px solid #333;
          text-align:center;
          font-size:12px;
          background-color:#e5e5e5;
          }
         #header{
          width: 100%;
          height: 80px;
          background-color: #cecece;
          }
          #main{
          widht:100%;
          height:500px;
          text-align: center;
          background-color:#cecece;
          }
          #left{
          width:33%;
          height:400px;
          background-color:green;
          margin: auto;
          float:left;}

         #center{
          width:33%;
          height:400px;
          background-color:red;
          margin: auto;
          float:left;}

          #right{
          width:33%;
          height:400px;
          background-color:#cecece;
          float:right;

          }
          #footer{
          widht:100%;
          height:80px;
          background-color:black;
          clear:both;
          }
          #text-center{
          display: inline-block;
          text-align: center;

          }
          </style>
</head>
<body>
        <div id="header">

        </div>
        <div id="top">
          <p>管理者画面</p>
        </div>
        <div>
        <div id="main">


            <div id="left">
                  <h1>商品</h1>
                    <s:form action="ItemCreateAction">
                    <s:submit value="新規登録"/><br>
                    </s:form>

                    <s:form action="ItemListAction">
                    <s:submit value="一覧"/>
                    </s:form>
            </div>

                 <div id="center">
                    <h1>管理者</h1>
                   <s:form action="AdminCreateAction">
                       <s:submit value="管理者登録" /><br>
                       </s:form>
                       <s:form action="AdminListAction">
                       <s:submit value="管理者一覧" />
                    </s:form>
                  </div>


                 <div id="right">
                      <h1>ユーザー</h1>
                       <s:form action="UserCreateAction">
                       <s:submit value="ユーザー新規登録" /><br>
                       </s:form>
                       <s:form action="UserListAction">
                       <s:submit value="ユーザー一覧" />
                       </s:form>
                 </div>
          </div>
        </div>


</body>
</html>