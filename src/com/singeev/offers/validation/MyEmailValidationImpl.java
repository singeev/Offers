package com.singeev.offers.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.apache.commons.validator.routines.EmailValidator;

public class MyEmailValidationImpl implements ConstraintValidator<MyEmailValidation, String> {

	private int min;

	@Override
	public void initialize(MyEmailValidation constraintAnnotation) {
		min = constraintAnnotation.min();
	}

	@Override
	public boolean isValid(String email, ConstraintValidatorContext context) {
		if (email.length() >= min && EmailValidator.getInstance(false).isValid(email)) {
			return true;
		}
		return false;
	}
}
