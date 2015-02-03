<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/loginform.css">
<link rel="stylesheet" href="css/style.css">

<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript">
	$(function() {
		$("#login").validate({

			rules : {
				userid : {
					required : true

				},
				password : {
					required : true
				}

			},

			messages : {
				userid : {
					required : "Please enter UserID"

				},
				password : {
					required : "Please enter Password"
				},

			}

		});

	});
	$(function() {
		$("#reset").click(function() {
			$('label.error').hide();
		});
	});
</script>
<style type="text/css">
.c {
    margin-left: 0%;
    width:75% ;
    margin-top: 10%;
}
em {
	color: red;
}

label.error {
	color: #F00;
	font-size: 9.9px;
	margin-left: 58%;
	margin-top: -193%;
}

#hyperlink {
	margin-left: 67%;
	margin-top: 10%;
}
#footer{
margin-bottom:auto;
}
</style>
</head>
<body>
	 <div>
		<%@include file="header.jsp"%>
	</div> 
	<div class="c">
		<!-- <div class="thumbnail">
			<img src="images/f1.jpg" alt="Generic placeholder thumbnail">
		</div> -->
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">Login</h3>
			</div>
			<div class="panel-body">

				<form action="login.do" method="post" class="form-horizontal"
					id="login">
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">
							UserID<em>*</em>
						</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="userid"
								placeholder="xyx@xyz.com" name="email" required>
						</div>
					</div>
					<div class="form-group">
						<label for="lastname" class="col-sm-2 control-label">
							Password<em>*</em>
						</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="password"
								name="password" placeholder="Password" required>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">

							<button type="submit" class="btn btn-primary">submit</button>

							<button type="reset" class="btn btn-primary" id="reset">Clear</button>
						</div>
						<!-- <div class="thumbnail">
					<img src="images/f1.jpg"
						alt="Generic placeholder thumbnail">
				</div> -->
						<div id="hyperlink">
							<a href="register.jsp">Registered..?</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	 <div id="footer">
		<%@include file="footer.jsp"%>
	</div> 
</body>
</html>