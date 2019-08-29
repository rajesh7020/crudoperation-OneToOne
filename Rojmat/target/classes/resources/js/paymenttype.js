$(document).ready(function() {
	$('#tbid').DataTable({
		"paging": true, 
	    "order": [0, 'desc'],
	}); 
	
	$('#paymentmodechk').hide();
	var paymentmode_err = true;
	
	$('#paymentMode').keyup(function() {
		paymenttype_chk();
	});
	
	function paymenttype_chk() {
		var paymenttype = $('#paymentMode').val();
		if((paymenttype.length == "") || (paymenttype.length == null)) {
			$('#paymentmodechk').show();
			$('#paymentmodechk').html("Please fill payment type");
			$('#paymentmodechk').focus();
			$('#paymentmodechk').css("color","red");
			paymentmode_err = false;
			return false;
		} else {
			$('#paymentmodechk').hide();
		}
	}
	
	$('#savebtn').click(function() {
		paymentmode_err = true;
		paymenttype_chk();
		if(paymentmode_err == true) {
			return true;
		} else {
			return false;
		}
	});
});