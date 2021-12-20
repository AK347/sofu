<!DOCTYPE html>
<html>
<head>
	<title>Forgot Password Page</title>
	<link rel="stylesheet" type="text/css" href="css/login_admin.css">
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap');

html,body{
	padding: 0;
	margin: 0;
}
#forgetpassword{
	background-color: green;
	padding: 80px 0;
	font-family: 'Roboto', sans-serif;
	background-image: url("<%=request.getContextPath()%>/images/otp.png");
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	height: 100vh;
}

h1{
	font-size: 35px;
	line-height: 35px;
	color: #333;
	font-weight: 700px;
	padding-bottom: 30px;
}
.formWrapper{
	max-width: 400px;
	margin: 0 auto;
	background-color: #fff;
	border-radius: 6px;
	-webkit-box-shadow: 2px 2px 5px 0 #8F8F8F;
	box-shadow: 2px 2px 5px 0 #8F8F8F;
	text-align:center; 
	padding: 50px 30px;
}

.inputFormWrapper{
	width:100%;
	padding:10px 0;
	display: flex;
	flex-wrap: wrap;
	justify-content: flex-start;
	align-items: flex-start;
	flex-direction: column;
}

.inputFormWrapper input:not(.submitBtn){
	width:100%;
	height: 35px;
	border:none;
	background-color: #f5f5f5;

}


form{
	width:100%;
}
label{
	font-size: 12px;
	font-weight: 400;
	margin-bottom: 5px;

}

a{
	text-decoration: none;
	color: #159cea;

}

#button_ctn{
	width: 100%;
	text-align:left; ;
}
.submitBtn{
	font-size: 14px;
	line-height: 35px;
	height: 35px;
	color: #fff;
	background-color: #159cea;
	border:1px solid #159cea;
	border-radius: 6px;
	padding:0 15px;
	
	display: inline-block;
}
.submitBtn:hover {
	color:#159cea;
	background-color: #fff;
	-webkit-transition: all 0.3s ease-in-out;
-moz-transition: all 0.3s ease-in-out;
-ms-transition: all 0.3s ease-in-out;
-o-transition: all 0.3s ease-in-out;
transition: all 0.3s ease-in-out;

}


.otp{
	
	flex-wrap: wrap;
	justify-content: flex-start;
	align-self: flex-start;
	display: none;
}
.otp.show{
	display: flex;
}

.otp p{
	display: block;
	width: 100%;
	text-align: left;
	font-size: 12px;
}

.otp input:not(.submitBtn){
	width: 50px;
	height: 30px;
	background-color: #f5f5f5;
	border: none;
	margin-right: 5px;
}

#button_ctn{
	margin-top: 20px;
}

</style>
<body>
<section id="forgetpassword">
	<div class="formWrapper">
		<h1>Welcome To HIFI Railways</h1>

		<form>
			<div class="inputFormWrapper">
				<label for="phone">Phone Number:</label>

				<input type="tel" id="phone" name="phone" required placeholder="+91- 9999 9999 99">
			</div>
			<div class="inputFormWrapper">
				<input class="submitBtn trigger-btn" type="submit" name="submit" value="send">	
			</div>
		</form>
		<form class="otp" method="get" class="digit-group" data-group-name="digits" data-autosubmit="false" autocomplete="off">
			<p>Enter OTP</p>

			<input type="text" id="digit-1" name="digit-1" data-next="digit-2" />
			<input type="text" id="digit-2" name="digit-2" data-next="digit-3" data-previous="digit-1" />
			<input type="text" id="digit-3" name="digit-3" data-next="digit-4" data-previous="digit-2" />
			<input type="text" id="digit-4" name="digit-4" data-next="digit-5" data-previous="digit-3" />
			<div id="button_ctn"> 
				<a class="submitBtn" type="submit" name="submit" href="index.html"> Login</a>	
				<!-- <input class="submitBtn" type="submit" name="submitOTP" value="Submit OTP"> -->
			</div>
		</form>
	</div>
</section>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/main.js"></script>
<script>
$('.digit-group').find('input').each(function() {
	$(this).attr('maxlength', 1);
	$(this).on('keyup', function(e) {
		var parent = $($(this).parent());
		
		if(e.keyCode === 8 || e.keyCode === 37) {
			var prev = parent.find('input#' + $(this).data('previous'));
			
			if(prev.length) {
				$(prev).select();
			}
		} else if((e.keyCode >= 48 && e.keyCode <= 57) || (e.keyCode >= 65 && e.keyCode <= 90) || (e.keyCode >= 96 && e.keyCode <= 105) || e.keyCode === 39) {
			var next = parent.find('input#' + $(this).data('next'));
			
			if(next.length) {
				$(next).select();
			} else {
				if(parent.data('autosubmit')) {
					parent.submit();
				}
			}
		}
	});
});



$(".trigger-btn").click(function(){
  $(".otp").toggle(".show");
});
</script>

</body>      
</html>