$(document).ready(function() {
	$('#emailloginchk').hide();
	$('#passwordloginchk').hide();
	
	var email_err = true;
	var pass_err = true;
	
	$('#emaillog').keyup(function() {
		email_chk();
	});
	
	function email_chk() {
		var email_val = $('#emaillog').val();
		var pattern = /^\b[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b$/i;
		if((email_val.length == '') || (email_val.length == null)) {
			$('#emailloginchk').show();
			$('#emailloginchk').html("Please Fill the Email");
			$('#emailloginchk').focus();
			$('#emailloginchk').css("color","red");
			email_err = false;
			return false;
		} else {
			$('#emailloginchk').hide();
		}
		
		if(!pattern.test(email_val)) {
			$('#emailloginchk').show();
			$('#emailloginchk').html("Email is not Valid");
			$('#emailloginchk').focus();
			$('#emailloginchk').css("color","red");
			email_err = false;
			return false;
		} else {
			$('#emailloginchk').hide();
		}
	}
	
	$('#passlog').keyup(function() {
	  	password_chk();
	});
	
	function password_chk() {
		var password_val = $('#passlog').val();
		if((password_val.length == '') || (password_val.length == null)) {
			$('#passwordloginchk').show();
			$('#passwordloginchk').html("Please fill the Password");
			$('#passwordloginchk').focus();
			$('#passwordloginchk').css("color","red");
			pass_err = false;
			return false;
		} else {
			$('#passwordloginchk').hide();
		}
		
		if((password_val.length < 5) || (password_val.length > 15)) {
			$('#passwordloginchk').show();
			$('#passwordloginchk').html("Password length must be between 5 and 15");
			$('#passwordloginchk').focus();
			$('#passwordloginchk').css("color","red");
			pass_err = false;
			return false;
		} else {
			$('#passwordloginchk').hide();
		}
	}
	
	$('#btnLogin').click(function() {
		 email_err = true;
		 pass_err = true;
		 
		 email_chk();
		 password_chk();
		 
		 if((email_err =- true) && (pass_err == true)) {
			 return true;
		 } else {
			 return false;
		 }
	});
});