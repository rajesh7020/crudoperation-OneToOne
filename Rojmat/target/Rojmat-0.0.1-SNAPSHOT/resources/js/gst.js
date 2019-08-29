$(document).ready(function() {
	$('#tbid').DataTable({
		"paging": true, 
	    "order": [0, 'desc'],
	}); 
	
	$('#percentagechk').hide();
	var percentage_err = true;
	
	$('#percentage').keyup(function() {
		percentage_chk();
	});
	
	function percentage_chk() {
		var percentage = $('#percentage').val();
		if((percentage.length == "") || (percentage.length == null)) {
			$('#percentagechk').show();
			$('#percentagechk').html("Please fill GST Percentage");
			$('#percentagechk').focus();
			$('#percentagechk').css("color","red");
			percentage_err = false;
			return false;
		} else {
			$('#percentagechk').hide();
		}
	}
	
	$('#savebtn').click(function() {
		percentage_err = true;
		percentage_chk();
		if(percentage_err == true) {
			return true;
		} else {
			return false;
		}
	});
});