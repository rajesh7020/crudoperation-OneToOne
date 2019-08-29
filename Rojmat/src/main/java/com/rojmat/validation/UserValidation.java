package com.rojmat.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.rojmat.entity.User;

public class UserValidation implements Validator{

	@Override
	public boolean supports(Class<?> arg0) {
		
		return User.class.equals(arg0);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "shopname", "shopname.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobile", "mobile.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "email.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "password.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "address.required");
		
	}

}
