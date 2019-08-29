$(document).ready(function() {
	$('#tbid').DataTable({
		"paging": true, 
	    "order": [0, 'desc'],
	}); 
	
	$('#categorynamechk').hide();
	var categoryName_err = true;
	
	$('#categoryname').keyup(function() {
		categoryName_chk();
	});
	
	function categoryName_chk() {
		var catName = $('#categoryname').val();
		if((catName.length == "") || (catName.length == null)) {
			$('#categorynamechk').show();
			$('#categorynamechk').html("Please fill Category Name");
			$('#categorynamechk').focus();
			$('#categorynamechk').css("color","red");
			categoryName_err = false;
			return false;
		} else {
			$('#categorynamechk').hide();
		}
	}
	
	$('#savebtn').click(function() {
		categoryName_err = true;
		categoryName_chk();
		if(categoryName_err == true) {
			return true;
		} else {
			return false;
		}
	});
});