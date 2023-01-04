$(function() {
    var $registerForm = $("#register");

    $registerForm.validate({
        rules: {
        	fname: {
                required: true,
                lattersonly: true
            },
            lname: {
                required: true,
                
            },
            email: {
                required: true,
                email: true
            },
            password: {
                required: true,
                all: true
            },
            sname: {
                required: true,
                lattersonly: true
            },
            address: {
                required: true
               
            },
            phone: {
                required: true,
                numericonly:true
            },
            place: {
                required: true
               
            },

        },
        messages: {
        	fname: {
                required: 'First must be required',
                lattersonly: 'invalid name'
            },
            lname: {
                required: 'Last must be required',
                lattersonly: 'invalid name'
            },

            email: {
                required: 'Email must be required',
                email: 'email invalid'
            },
            
            password: {
                required: 'password must be required',
                all: 'space is not allowed'
            },
            sname:{
            	required:'seller name must be required',
            	lattersonly: 'invalid  name'
            },
            address:{
            	required:'Address must be required',
            },
            phone:{
            	required:'Phone number required',
            	numericonly:'numbers only',
            },
            place:{
            	required:'your place required'
            }
  
        }
    })

    jQuery.validator.addMethod('lattersonly', function(value) {
        return /^[^-\s][a-zA-Z_\s-]+$/.test(value);
    });

    jQuery.validator.addMethod('numericonly', function(value, element) {
        return /^[0-9]+$/.test(value);
    });

    jQuery.validator.addMethod('all', function(value, element) {
        return /^[^-\s][a-zA-Z0-9_\s-]+$/.test(value);
    });
})