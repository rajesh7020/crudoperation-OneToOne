		$(document).ready(function() {
	    	
	    	$('#shopnamechk1').hide();
	    	$('#namechk1').hide();
	    	$('#emailchk1').hide();
	    	$('#mobilnochk1').hide();
	    	$('#messagechk').hide();
	    	
	    	var shopname_err = true;
	    	var name_err = true;
	    	var email_err = true;
	    	var mobile_err = true;
	    	var message_err = true;
	    	
	    	$('#shopname1').keyup(function() {
				shopname_check();
			});
	    	
	    	function shopname_check() {
				var shopname_val = $('#shopname1').val();
				if((shopname_val.length == '') || (shopname_val.length == null) ) {
					$('#shopnamechk1').show();
					$('#shopnamechk1').html("Please Fill the Shopname");
					$('#shopnamechk1').focus();
					$('#shopnamechk1').css("color","red");
					shopname_err = false;
					return false;
				} else {
					$('#shopnamechk1').hide();
				}
				
				if((shopname_val.length < 3) || (shopname_val.length > 12)) {
					$('#shopnamechk1').show();
					$('#shopnamechk1').html("Shop Name length must be between 3 and 12");
					$('#shopnamechk1').focus();
					$('#shopnamechk1').css("color","red");
					shopname_err = false;
					return false;
				} else {
					$('#shopnamechk1').hide();
				}
			}
	    	
	    	$('#personname1').keyup(function() {
				personName_chk();
			});
	    	
	    	function personName_chk() {
	    		var personname_val = $('#personname1').val();
				if((personname_val.length == '') || (personname_val.length == null)) {
					$('#namechk1').show();
					$('#namechk1').html("Please Fill the Person Name");
					$('#namechk1').focus();
					$('#namechk1').css("color","red");
					name_err = false;
					return false;
				} else {
					$('#namechk1').hide();
				}
				
				if((personname_val.length < 3) || (personname_val.length > 15)) {
					$('#namechk1').show();
					$('#namechk1').html("Person Name length must be between 3 and 15");
					$('#namechk1').focus();
					$('#namechk1').css("color","red");
					name_err = false;
					return false;
				} else {
					$('#namechk1').hide();
				}
			}
	    	
	    	$('#email1').keyup(function() {
				email_chk();
			});
	    	
	    	function email_chk() {
	    		var email_val = $('#email1').val();
	    		var pattern = /^\b[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b$/i;
				if((email_val.length == '') || (email_val.length == null)) {
					$('#emailchk1').show();
					$('#emailchk1').html("Please Fill the Email");
					$('#emailchk1').focus();
					$('#emailchk1').css("color","red");
					email_err = false;
					return false;
				} else {
					$('#emailchk1').hide();
				}
				
				if(!pattern.test(email_val)) {
					$('#emailchk1').show();
					$('#emailchk1').html("Email is not Valid");
					$('#emailchk1').focus();
					$('#emailchk1').css("color","red");
					email_err = false;
					return false;
				} else {
					$('#emailchk1').hide();
				}
			}
	    	
	    	
	    	$('#mobile1').keyup(function() {
				mobile_chk();
			});
	    	
	    	function mobile_chk() {
	    		var mobile_val = $('#mobile1').val();
	    		var pattern = /^\d*(?:\.\d{1,2})?$/;
				if((mobile_val.length == '') || (mobile_val.length == null)) {
					$('#mobilnochk1').show();
					$('#mobilnochk1').html("Please Fill the Mobile Number");
					$('#mobilnochk1').focus();
					$('#mobilnochk1').css("color","red");
					mobile_err = false;
					return false;
				} else {
					$('#mobilnochk1').hide();
				}
				
				if(!pattern.test(mobile_val)) {
					$('#mobilnochk1').show();
					$('#mobilnochk1').html("Mobile Number is not Valid");
					$('#mobilnochk1').focus();
					$('#mobilnochk1').css("color","red");
					mobile_err = false;
					return false;
				} else {
					$('#mobilnochk1').hide();
				}
				
				if((mobile_val.length < 10) || (mobile_val.length > 10)) {
					$('#mobilnochk1').show();
					$('#mobilnochk1').html("Mobile Number Length must be 10 Digit");
					$('#mobilnochk1').focus();
					$('#mobilnochk1').css("color","red");
					mobile_err = false;
					return false;
				} else {
					$('#mobilnochk1').hide();
				}
			}
	    	
	    	$('#message').keyup(function() {
				message_check();
			});
	    	
	    	function message_check() {
				var message_val = $('#message').val();
				if((message_val.length == '') || (message_val.length == null)) {
					$('#messagechk').show();
					$('#messagechk').html("Please Fill the message");
					$('#messagechk').focus();
					$('#messagechk').css("color","red");
					message_err = false;
					return false;
				} else {
					$('#messagechk').hide();
				}
				
				if((message_val.length < 20) || (message_val.length > 50)) {
					$('#messagechk').show();
					$('#messagechk').html("message length must be between 20 and 50");
					$('#messagechk').focus();
					$('#messagechk').css("color","red");
					message_err = false;
					return false;
				} else {
					$('#messagechk').hide();
				}
			}
	    	
	    	$('#btnsendmessage').click(function() {
	    		shopname_err = true;
		    	name_err = true;
		    	email_err = true;
		        mobile_err = true;
		        messagechk = true;
		    	shopname_check();
		    	personName_chk();
		    	email_chk();
		    	mobile_chk();
		    	message_check();
		    	if((shopname_err == true) && (name_err == true) && (email_err == true) && (mobile_err == true) && (messagechk == true) ) {
		    		return true;
		    	} else {
		    		return false;
		    	}
			});
		});	