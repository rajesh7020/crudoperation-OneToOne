		$(document).ready(function() {
	    	
	    	$('#shopnamechk').hide();
	    	$('#namechk').hide();
	    	$('#emailchk').hide();
	    	$('#passwordchk').hide();
	    	$('#mobilnochk').hide();
	    	$('#addresschk').hide();
	    	
	    	var shopname_err = true;
	    	var name_err = true;
	    	var email_err = true;
	    	var pass_err = true;
	    	var mobile_err = true;
	    	var address_err = true;
	    	
	    	$("input[name='shopname']").keyup(function() {
				shopname_check();
			});
	    	
	    	function shopname_check() {
				var shopname_val = $("input[name='shopname']").val();
				if((shopname_val.length == '') || (shopname_val.length == null) ) {
					$('#shopnamechk').show();
					$('#shopnamechk').html("Please Fill the Shopname");
					$('#shopnamechk').focus();
					$('#shopnamechk').css("color","red");
					shopname_err = false;
					return false;
				} else {
					$('#shopnamechk').hide();
				}
				
				if((shopname_val.length < 3) || (shopname_val.length > 12)) {
					$('#shopnamechk').show();
					$('#shopnamechk').html("Shop Name length must be between 3 and 12");
					$('#shopnamechk').focus();
					$('#shopnamechk').css("color","red");
					shopname_err = false;
					return false;
				} else {
					$('#shopnamechk').hide();
				}
			}
	    	
	    	$('#name').keyup(function() {
				personName_chk();
			});
	    	
	    	function personName_chk() {
	    		var personname_val = $('#name').val();
				if((personname_val.length == '') || (personname_val.length == null)) {
					$('#namechk').show();
					$('#namechk').html("Please Fill the Person Name");
					$('#namechk').focus();
					$('#namechk').css("color","red");
					name_err = false;
					return false;
				} else {
					$('#namechk').hide();
				}
				
				if((personname_val.length < 3) || (personname_val.length > 15)) {
					$('#namechk').show();
					$('#namechk').html("Person Name length must be between 3 and 15");
					$('#namechk').focus();
					$('#namechk').css("color","red");
					name_err = false;
					return false;
				} else {
					$('#namechk').hide();
				}
			}
	    	
	    	$('#email').keyup(function() {
				email_chk();
			});
	    	
	    	function email_chk() {
	    		var email_val = $('#email').val();
	    		var pattern = /^\b[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b$/i;
				if((email_val.length == '') || (email_val.length == null)) {
					$('#emailchk').show();
					$('#emailchk').html("Please Fill the Email");
					$('#emailchk').focus();
					$('#emailchk').css("color","red");
					email_err = false;
					return false;
				} else {
					$('#emailchk').hide();
				}
				
				if(!pattern.test(email_val)) {
					$('#emailchk').show();
					$('#emailchk').html("Email is not Valid");
					$('#emailchk').focus();
					$('#emailchk').css("color","red");
					email_err = false;
					return false;
				} else {
					$('#emailchk').hide();
				}
			}
	    	
	    	$('#passid').keyup(function() {
				password_chk();
			});
	    	
	    	function password_chk() {
	    		var password_val = $('#passid').val();
	    		var pattern = /^[A-Za-z0-9!@#$%^&*()_]{5,15}$/;
				if((password_val.length == '') || (password_val.length == null)) {
					$('#passwordchk').show();
					$('#passwordchk').html("Please fill the Password");
					$('#passwordchk').focus();
					$('#passwordchk').css("color","red");
					pass_err = false;
					return false;
				} else {
					$('#passwordchk').hide();
				}
				
				if((password_val.length < 5) || (password_val.length > 15)) {
					$('#passwordchk').show();
					$('#passwordchk').html("Password length between 6 and 20");
					$('#passwordchk').focus();
					$('#passwordchk').css("color","red");
					pass_err = false;
					return false;
				} else {
					$('#passwordchk').hide();
				}
				
				if(!pattern.test(password_val)) {
					$('#passwordchk').show();
					$('#passwordchk').html("Please enter [A-Z,a-z,number and any one special character]");
					$('#passwordchk').focus();
					$('#passwordchk').css("color","red");
					pass_err = false;
					return false;
				} else {
					$('#passwordchk').hide();
				}
			}
	    	
	    	$('#mobileno').keyup(function() {
				mobile_chk();
			});
	    	
	    	function mobile_chk() {
	    		var mobile_val = $('#mobileno').val();
	    		var pattern = /^\d*(?:\.\d{1,2})?$/;
				if((mobile_val.length == '') || (mobile_val.length == null)) {
					$('#mobilnochk').show();
					$('#mobilnochk').html("Please Fill the Mobile Number");
					$('#mobilnochk').focus();
					$('#mobilnochk').css("color","red");
					mobile_err = false;
					return false;
				} else {
					$('#mobilnochk').hide();
				}
				
				if(!pattern.test(mobile_val)) {
					$('#mobilnochk').show();
					$('#mobilnochk').html("Mobile Number is not Valid");
					$('#mobilnochk').focus();
					$('#mobilnochk').css("color","red");
					mobile_err = false;
					return false;
				} else {
					$('#mobilnochk').hide();
				}
				
				if((mobile_val.length < 10) || (mobile_val.length > 10)) {
					$('#mobilnochk').show();
					$('#mobilnochk').html("Mobile Number Length must be 10 Digit");
					$('#mobilnochk').focus();
					$('#mobilnochk').css("color","red");
					mobile_err = false;
					return false;
				} else {
					$('#mobilnochk').hide();
				}
			}
	    	
	    	$('#address').keyup(function() {
				address_check();
			});
	    	
	    	function address_check() {
				var address_val = $('#address').val();
				if((address_val.length == '') || (address_val.length == null)) {
					$('#addresschk').show();
					$('#addresschk').html("Please Fill the Address");
					$('#addresschk').focus();
					$('#addresschk').css("color","red");
					address_err = false;
					return false;
				} else {
					$('#addresschk').hide();
				}
				
				if((address_val.length < 20) || (address_val.length > 50)) {
					$('#addresschk').show();
					$('#addresschk').html("Address length must be between 20 and 50");
					$('#addresschk').focus();
					$('#addresschk').css("color","red");
					address_err = false;
					return false;
				} else {
					$('#addresschk').hide();
				}
			}
	    	
	    	$('#btnSave').click(function() {
	    		shopname_err = true;
		    	name_err = true;
		    	email_err = true;
		    	pass_err = true;
		        mobile_err = true;
		        address_err = true;
		    	shopname_check();
		    	personName_chk();
		    	email_chk();
		    	password_chk();
		    	mobile_chk();
		    	address_check();
		    	if((shopname_err == true) && (name_err == true) && (email_err == true) && (pass_err == true) && (mobile_err == true) && (address_err == true) ) {
		    		return true;
		    	} else {
		    		return false;
		    	}
			});
	    	
	    	$('.reset-btn').click(function() {
	    		reset_chk();	
	    	});
	    	
	    	function reset_chk() {
	    		$("#myForm").trigger("reset");
			}
	    	
	    	$('#btnSave').click(function(){
	    		var shopname = $('#shopname').val();
	    		var pershonname = $('#name').val();
	    		var email = $('#email').val();
	    		var password = $('#passid').val();
	    		var mobile = $('#mobileno').val();
	    		var address = $('#address').val();
	    		
	    		$.ajax({
	    			url:'./UserController?operation=saveUser&shopname='+shopname+"&name="+pershonname+"&email="+email+"&password="+password+"&mobileno="+mobile+"&address="+address,
	    			dataType: "json",
	    			type: "Post",
	    			success: function(result) {
	    				$('#message').text(result);
	    				reset_chk();
	    			},
	    			error: function(responseText) {
	    				alert("error")
	    			}
	    		});
	    	});
		});	

		function showPassword() {
			  var x = document.getElementById("passid");
			  if (x.type === "password") {
			    x.type = "text";
			  } else {
			    x.type = "password";
			  }
		}