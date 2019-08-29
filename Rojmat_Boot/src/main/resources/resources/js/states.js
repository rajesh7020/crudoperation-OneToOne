$(document).ready(function() {
	$('#tbid').DataTable({
		"paging": true, 
	    "order": [0, 'desc'],
	}); 
	
	$('#statenamechk').hide();
	var statename_err = true;
	
	$('#statename').keyup(function() {
		stateName_chk();
	});
	
	function stateName_chk() {
		var stateName = $('#statename').val();
		if((stateName.length == "") || (stateName.length == null)) {
			$('#statenamechk').show();
			$('#statenamechk').html("Please fill State Name");
			$('#statenamechk').focus();
			$('#statenamechk').css("color","red");
			statename_err = false;
			return false;
		} else {
			$('#statenamechk').hide();
		}
	}
	
	$('#savebtn').click(function() {
		statename_err = true;
		stateName_chk();
		if(statename_err == true) {
			return true;
		} else {
			return false;
		}
	});
});