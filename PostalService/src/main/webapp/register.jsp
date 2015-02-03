<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>

<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/registerform.css">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript">
	$(function() {
		jQuery.validator.addMethod("lettersonly", function(value, element) {
			return this.optional(element) || /^[a-z]+$/i.test(value);
		}, "enter only Alphates");
		$("#register").validate({

			rules : {
				firstname : {
					required : true,
					minlength : 3,
					maxlength : 15,
					lettersonly : true
				},
				lastname : {
					required : true,
					minlength : 3,
					maxlength : 8,
					lettersonly : true
				},
				email : {
					required : true
				},
				password : {
					required : true,
					minlength : 3,
					maxlength : 8
				}
			},

			messages : {
				firstname : {
					required : "Please enter firstname",
					minlength : "Minimum 3 characters",
					maxlength : "Maximum 15 characters"

				},
				lastname : {
					required : "Please enter lastname",
					minlength : "Minimum 3 characters",
					maxlength : "Maximum 15 characters"

				},
				email : {
					required : "Please enter emailID"

				},
				password : {
					required : "Please enter password",
					minlength : "Minimum 3 letters in password",
					maxlength : "Maximum 8 characters"
				}
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
em {
	color: red;
}

label.error {
	color: #F00;
	font-size: 9.9px;
	margin-left: 58%;
	margin-top: -193%;
}

.d {
	margin-left: -10%;
	width: 75%;
	margin-top: 1%;
}
</style>
</head>
<body>
	<!-- <div> -->
	<%@include file="header.jsp"%>
	<!-- </div>  -->
	<div id="d" class="d">
		<div class="container">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Register</h3>
				</div>
				<div class="panel-body">

					<form action="register.do" method="post" class="form-horizontal"
						role="form" id="register">
						<div class="form-group">
							<label for="firstname" class="col-sm-2 control-label">
								FirstName<em>*</em>
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="firstname"
									name="firstname" placeholder="FirstName" required>
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">
								LastName<em>*</em>
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="lastname"
									name="lastname" placeholder="LastName" required>
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label"> Email<em>*</em>
							</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="email" name="email"
									placeholder="email" required>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-2 control-label">
								Password<em>*</em>
							</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="password"
									name="password" placeholder="Password" required>
							</div>
						</div>
						<div class="form-group">

							<label for="name" class="col-sm-2 control-label">Address</label>
							<textarea class="form-control" cols="3" rows="3" id="address"
								name="address"></textarea>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">

								<button type="submit" class="btn btn-primary">submit</button>

								<button type="reset" class="btn btn-primary" id="reset">Reset</button>
								<a href="login.jsp"><button type="button" class="btn btn-primary" id="reset">Cancel</button></a>
							</div>


						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div>
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>