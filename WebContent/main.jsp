<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/css/bootstrap.css">

<title>JSP 게시판 웹사이트</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
   <nav class="navbar navbar-default"> 
      <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed"
            data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
            aria-expanded="false">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href=main.jsp> JSP 게시판 웹 사이트</a>      
         </div> 
         <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
               <li class="active"><a href="main.jsp">메인</a></li>
               <li><a href="bbs.jsp">게시판</a></li>
            </ul>
            <%
            	if(userID == null) {
            		
            %>	
            <ul class="nav navbar-nav navbar-right">
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle"
                     data-toggle="dropdown" role="button" aria-haspopup="true"
                     aria-expanded="false">접속하기<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                     <li><a href="login.jsp">로그인</a></li>
                     <li><a href="join.jsp">회원가입</a></li>
                  </ul>               
                  </li>
            </ul>
            <%
            	} else {
            %>
            <ul class="nav navbar-nav navbar-right">
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle"
                     data-toggle="dropdown" role="button" aria-haspopup="true"
                     aria-expanded="false">회원관리<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                     <li><a href="logoutAction.jsp">로그아웃</a></li>
                  </ul>               
                  </li>
            </ul>
            <% 
            	}
            %>
            
         </div>
   </nav>
   <div class="container">
   	<div class="jumbotron">
   		<div class="container">
   		<h1>웹사이트 소개</h1>
   		<p>이 웹 사이트는 부트스크랩으로 만든 JSP웹 사이트당. 만드는데 굉장히 힘들었다구</p>
   		<p><a class="btn btn-primary btn-pull"href="#"role="button">자세히 알아보기</a></p>
   		</div>
   	</div>
   </div>
     
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
</body>
</html> 
