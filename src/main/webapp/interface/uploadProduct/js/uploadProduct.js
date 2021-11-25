
(function ($) {
    "use strict";


    /*==================================================================
    [ Focus Contact2 ]*/
    $('.input100').each(function(){
        $(this).on('blur', function(){
            if($(this).val().trim() != "") {
                $(this).addClass('has-val');
            }
            else {
                $(this).removeClass('has-val');
            }
        })    
    })
  
  
    /*==================================================================
    [ Validate ]*/
    var id = $('.validate-input input[name="id"]');
    var idCategory = $('.validate-input input[name="idCategory"]');
    var brand = $('.validate-input textarea[name="brand"]');
    var name = $('.validate-input input[name="name"]');
    var price = $('.validate-input input[name="price"]');
    var color = $('.validate-input textarea[name="color"]');
    var detail = $('.validate-input input[name="detail"]');
    var status = $('.validate-input input[name="status"]');


    $('.validate-form').on('submit',function(){
        var check = true;

        if($(id).val().trim() == ''){
            showValidate(id);
            check=false;
        }
        if($(idCategory).val().trim() == ''){
            showValidate(idCategory);
            check=false;
        }

        if($(brand).val().trim() == ''){
            showValidate(brand);
            check=false;
        }
        if($(name).val().trim() == ''){
            showValidate(name);
            check=false;
        }
        if($(color).val().trim() == ''){
            showValidate(color);
            check=false;
        }

        if($(price).val().trim() == ''){
            showValidate(price);
            check=false;
        }
        if($(detail).val().trim() == ''){
            showValidate(detail);
            check=false;
        }

        if($(status).val().trim() == ''){
            showValidate(status);
            check=false;
        }

        return check;
    });


    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
       });
    });

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }
    
    

})(jQuery);