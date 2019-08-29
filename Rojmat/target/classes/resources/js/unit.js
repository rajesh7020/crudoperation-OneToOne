$(document).ready(function() {
	$('#tbid').DataTable({
		"paging": true, 
	    "order": [0, 'desc'],
	}); 
	
	$('#unitnamechk').hide();
	var unitname_err = true;
	
	$('#unitname').keyup(function() {
		unitName_chk();
	});
	
	function unitName_chk() {
		var unitName = $('#unitname').val();
		if((unitName.length == "") || (unitName.length == null)) {
			$('#unitnamechk').show();
			$('#unitnamechk').html("Please fill Unit Name");
			$('#unitnamechk').focus();
			$('#unitnamechk').css("color","red");
			unitname_err = false;
			return false;
		} else {
			$('#unitnamechk').hide();
		}
	}
	
	$('#savebtn').click(function() {
		unitname_err = true;
		unitName_chk();
		if(unitname_err == true) {
			return true;
		} else {
			return false;
		}
	});
});