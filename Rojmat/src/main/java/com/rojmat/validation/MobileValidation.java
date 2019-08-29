package com.rojmat.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class MobileValidation implements ConstraintValidator<Mobile, String>{

	@Override
	public void initialize(Mobile arg0) {
		
		
	}

	@Override
	public boolean isValid(String mobileNo, ConstraintValidatorContext arg1) {
		if(mobileNo == null){
			return false;
		}
		//validate phone numbers of format "1234567890"
        if (mobileNo.matches("\\d{10}")) return true;
        //validating phone number with -, . or spaces
        else if(mobileNo.matches("\\d{3}[-\\.\\s]\\d{3}[-\\.\\s]\\d{4}")) return true;
        //validating phone number with extension length from 3 to 5
        else if(mobileNo.matches("\\d{3}-\\d{3}-\\d{4}\\s(x|(ext))\\d{3,5}")) return true;
        //validating phone number where area code is in braces ()
        else if(mobileNo.matches("\\(\\d{3}\\)-\\d{3}-\\d{4}")) return true;
        //return false if nothing matches the input
        else return false;
	}

}
