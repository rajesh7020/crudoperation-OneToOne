$(document).ready(function(){
		$('#tbid').DataTable({
			"paging": true, 
		    "order": [0, 'desc'],
		}); 
		
		 $('#namechk').hide();
	     $('#hsncodechk').hide();
	     $('#pricechk').hide();
	     $('#categorychk').hide();
	     $('#gstchk').hide();
	     $('#unitchk').hide();
	     $('#gstchk').hide();
	     
	     var name_err = true;
	     var hsncode_err = true;
	     var price_err = true;
	     var category_err = true;
	     var gst_err = true;
	     var unit_err = true;
	     var gst_err = true;
	     /********************Product Name *********************/
	     $('#name').keyup(function() {
			name_chk();
		});
	     
	     function name_chk() {
	    	 var pname = $('#name').val();
		   	 if((pname.length == '') || (pname.length == null)) {
				$('#namechk').show();
				$('#namechk').html("Product name require");
				$('#namechk').focus();
				$('#namechk').css("color","red");
				name_err = false;
				return false;
			} else {
				$('#namechk').hide();
			}
		}
	     /********************HSN CODE *********************/
	     $('#hsncode').keyup(function() {
	 		hsncode_chk();
	 	});
	     
	     function hsncode_chk() {
	    	 var pname = $('#hsncode').val();
		   	 if((pname.length == '') || (pname.length == null)) {
				$('#hsncodechk').show();
				$('#hsncodechk').html("HSN Code is require");
				$('#hsncodechk').focus();
				$('#hsncodechk').css("color","red");
				hsncode_err = false;
				return false;
			} else {
				$('#hsncodechk').hide();
			}
		}
	     /********************Price *********************/
	     $('#price').keyup(function() {
	  		price_chk();
	  	});
	     
	     function price_chk() {
	    	 var price = $('#price').val();
		   	 if((price.length == '') || (price.length == null)) {
				$('#pricechk').show();
				$('#pricechk').html("Price is require");
				$('#pricechk').focus();
				$('#pricechk').css("color","red");
				price_err = false;
				return false;
			} else {
				$('#pricechk').hide();
			}
		}
	     /********************Category *********************/
	     $('#savebtn').click(function(){
	    	 category_chk();
	     });
	     function category_chk() {
	    	var category = $('#category');
			if(category.length == 0) {
				$('#categorychk').show();
				$('#categorychk').html("Please select category");
				$('#categorychk').focus();
				$('#categorychk').css("color","red");
				category_err = false;
				return false;
			} else {
				$('#categorychk').hide();
			}
	     }	
	     
	     /********************Unit *********************/
	     
	     function unit_chk() {
			if($("select[name=unit]").val() == "Select a Type") {
				$('#unitchk').show();
				$('#unitchk').html("Please select unit");
				$('#unitchk').focus();
				$('#unitchk').css("color","red");
				unit_err = false;
				return false;
			} else {
				$('#unitchk').hide();
			}
	     }	
	     
	     /********************GST *********************/
	     
	     function gst_chk() {
			if($("select[name=gst]").val() == 0) {
				$('#gstchk').show();
				$('#gstchk').html("Please select gst");
				$('#gstchk').focus();
				$('#gstchk').css("color","red");
				unit_err = false;
				return false;
			} else {
				$('#gstchk').hide();
			}
	     }	
	     
	     
	     $('#myForm').submit(function() {
	    	 name_err = true;
	         hsncode_err = true;
	         price_err = true;
	         category_err = true;
	         unit_err = true;
	         gst_err = true;
	         
	         name_chk();
	         hsncode_chk();
	         price_chk();
	         category_chk();
	         unit_chk();
	         gst_chk();
	         
	         if((name_err == true) && (hsncode_err == true) && (price_err == true) && (category_err == true) && (unit_err == true) && (gst_err == true)) {
	        	 return true;
	         } else {
	        	 return false;
	         }
	     });
	 });