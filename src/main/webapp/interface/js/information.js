$(function() {

	'use strict';

	// Form

	var contactForm = function() {

		if ($('#contactForm').length > 0 ) {
			$( "#contactForm" ).validate( {
				rules: {
					name: "required",
					email: {
						required: true,
						email: true
					},
					phonenumber: {
						required: true,
						minlength: 10
					},
					address: {
						required: true,
						minlength: 5
					},
					message: {
						required: true,
						minlength: 5
					}
				},
				messages: {
					name: "Please enter your name",
					email: "Please enter a valid email address",
					message: "Please enter a message",
					address: "Please enter your address",
					phonenumber: "Please enter your phone number",
				},	
			} );
		}
	};
	contactForm();

});