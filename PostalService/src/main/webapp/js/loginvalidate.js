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