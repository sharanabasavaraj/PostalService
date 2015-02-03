<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Parcel Details</title>

<script type="text/javascript" src="js/bootstrap.min.js"></script>

<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/postdetail.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<script type="text/javascript">
	$(function() {
		$("#datepicker").datepicker({

			minDate : new Date
		});

	});
	/* $(function() {
		jQuery.validator.addMethod("lettersonly", function(value, element) {
			return this.optional(element) || /^[a-z]+$/i.test(value);
		}, "enter only Alphates");
		$("#register").validate({

			rules : {
				name : {
					required : true,
					minlength : 3,
					maxlength : 15,
					lettersonly : true
				},
				prcl:{
					required : true
				},
				weight : {
					required : true
				/* minlength : 3,
				maxlength : 8,
				lettersonly : true 
				},
				datre : {
					required : true
				},
				time : {
					required : true

				}
			},

			messages : {
				name : {
					required : "Please enter firstname",
					minlength : "Minimum 3 characters",
					maxlength : "Maximum 15 characters"

				},
				prcl:{
					required : "Please enter Parcel type"
				},
				weight : {
					required : "Please enter lastname"

				},
				date : {
					required : "Please enter Date"

				},
				time : {
					required : "Please enter Time"

				}
			}

		});

	});*/
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
	margin-left: 54%;
	margin-top: -222%;
}

.col-sm-7 {
	width: 58.3333%;
	margin-left: 45%;
	margin-top: -9%;
}

.container {
	width: 1170px;
	margin-left: -6%;
}

.e {
	margin-left: -27%;
	margin-top: 2%;
}
.radio{
margin-left: 10%;
padding: 10px; 
}
</style>
</head>
<body>
	<div>
		<%@include file="header.jsp"%>
	</div>
	<div class="e">
		<div class="container">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Postal Detatils</h3>
				</div>
				<div class="panel-body">

					<form action="parcel.do" method="post" class="form-horizontal"
						role="form" id="register">
						<div class="form-group">
							<label for="firstname" class="col-sm-2 control-label">
								Recipient Name<em>*</em>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="name" name="name"
									placeholder="Name" required>
							</div>
						</div>
							<div class="form-group">
							<label for="password" class="col-sm-2 control-label">
								Parcel Type<em>*</em>
							</label>
							<div class="col-sm-6">
								<!-- <input type="password" class="form-control" id="password"
								name="password" placeholder="Password" required> -->
								<!-- <div class="col-sm-10"> -->
									<select class="form-control" id="prcl" name="prcl" required>
										<option>Envelop</option>
										<option>BOX</option>
										<option>Others</option>
										
										
									</select>
								</div>
							<!-- </div> -->
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">
								Parcle Weight<em>*</em>
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="weight"
									name="weight" placeholder="in gm" required>
							</div>
						</div>
						<!-- <div class="form-group">
						<label for="email" class="col-sm-2 control-label">Date<em>*</em>
						</label>
						<div class="col-sm-10">
							<input type="date" class="form-control" id="datepicket" name="date"
								placeholder="date" required>
								<input class="datepicker" data-date-format="mm/dd/yyyy" id="date" name="date">
						</div>
					</div> -->
						<div class="form-group">
							<label for="Date" class="col-sm-2 control-label">Date :<em>*</em>
							</label>
							<div class="col-sm-6">

								<input type="text" class="form-control" id="datepicker"
									name="date" placeholder="Enter Date" required>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-2 control-label">
								Time<em>*</em>
							</label>
							<div class="col-sm-6">
								<!-- <input type="password" class="form-control" id="password"
								name="password" placeholder="Password" required> -->
								<div class="col-sm-10">
									<select class="form-control" id="time" name="time" required>
										<option>1:00</option>
										<option>2:00</option>
										<option>3:00</option>
										<option>4:00</option>
										<option>5:00</option>
										<option>6:00</option>
										<option>7:00</option>
										<option>8:00</option>
										<option>9:00</option>
										<option>10:30</option>
										<option>11:00</option>
										<option>12:00</option>

									</select>
								</div>
								
								<div class="col-sm-7">
									<select class="form-control" id="am" name="pm">
										<option>AM</option>
										<option>PM</option>

									</select>
								</div>
							</div>
						</div>
						<div class="form-group" > 
						<label >Mention Address <em>*</em>  
						&#160;&#160;&#160;&#160; &#160;
						
						<input type="radio" name="opt"
								id="optionsRadios1" value="Home" required>Home
							</label>
						<!-- </div>
						<div class="radio"> -->
							<label> <input type="radio" name="opt"
								id="optionsRadios2" value="Office" required> Office
							</label>
						</div>
						<div class="form-group">

							<label for="name" class="col-sm-2 control-label">Address<em>*</em></label>
							<textarea class="form-control" cols="3" rows="3" name="address"
								required></textarea>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">

								<button type="submit" class="btn btn-primary">submit</button>

								<button type="reset" class="btn btn-primary">Clear</button>
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