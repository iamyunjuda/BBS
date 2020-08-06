<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/css/bootstrap.css">
</head>
<body>
	<section class="container">
		<article class="half">
			<h1>Simple Note</h1>
			<div class="tabs">
				<span class="tab signin active"><a href="#signin">Sign in</a></span>
				<span class="tab signup"><a href="#signup">Sign up</a></span>
			</div>
			<div class="content">
				<div class="signin-cont cont">
					<form method="post" action="LoginAction.jsp">
						<input type="text" name="userID" class="inpt" placeholder="Your ID" maxlength="20" required> 
						<input type="password" name="userPassword" class="inpt" placeholder="Your password" maxlength="20" required> 
						<input type="checkbox" class="checkbox" checked> <label for="remember">Remember me</label>
							<div class="submit-wrap">
								<input type="submit" value="Sign in" class="submit"> 
								<a href="#" class="more">Forgot your password?</a>
							</div>
					</form>
				</div>
				<div class="signup-cont cont">
					<form method="post" action="joinAction.jsp">
						<input type="text" name="userID" class="inpt" required="required" placeholder="Your ID"> 
						<input type="password" name="userPassword" class="inpt" required="required" placeholder="Your password"> 
						<input type="text" name="userName" class="inpt" required="required" placeholder="Your name">
						<div class="submit-wrap">
							<input type="submit" value="Sign up" class="submit">
							 <a href="#" class="more">Terms and conditions</a>
						</div>
					</form>
				</div>
			</div>
		</article>
		<div class="half bg"></div>
	</section>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript">
        $('.tabs .tab').click(function () {
            if ($(this).hasClass('signin')) {
                $('.tabs .tab').removeClass('active');
                $(this).addClass('active');
                $('.cont').hide();
                $('.signin-cont').show();
            }
            if ($(this).hasClass('signup')) {
                $('.tabs .tab').removeClass('active');
                $(this).addClass('active');
                $('.cont').hide();
                $('.signup-cont').show();
            }
        });
        $('.container .bg').mousemove(function (e) {
            var amountMovedX = (e.pageX * -1 / 30);
            var amountMovedY = (e.pageY * -1 / 9);
            $(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px');
        });
    </script>
</body>
</html>