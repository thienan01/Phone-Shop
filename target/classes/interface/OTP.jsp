<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
            <div class="card p-2 text-center">
                <h6>Please enter the order code to continue</h6>
                <div> <span>A code has been sent to</span> <small>${order.getEmail()}</small> </div>
                <div id="otp" class="inputs d-flex flex-row justify-content-center mt-2"> <input class="m-2 text-center form-control rounded" type="text" id="first" maxlength="1" name = "num1" /> <input class="m-2 text-center form-control rounded" type="text" id="second" maxlength="1" name = "num2"/> <input class="m-2 text-center form-control rounded" type="text" id="third" maxlength="1" name = "num3"/> <input class="m-2 text-center form-control rounded" type="text" id="fourth" maxlength="1" name = "num4"/> <input class="m-2 text-center form-control rounded" type="text" id="fifth" maxlength="1" name = "num5"/> <input class="m-2 text-center form-control rounded" type="text" id="sixth" maxlength="1" name = "num6"/> </div>
            </div>

    <script>
        document.addEventListener("DOMContentLoaded", function(event) {

function OTPInput() {
const inputs = document.querySelectorAll('#otp > *[id]');
for (let i = 0; i < inputs.length; i++) { inputs[i].addEventListener('keydown', function(event) { if (event.key==="Backspace" ) { inputs[i].value='' ; if (i !==0) inputs[i - 1].focus(); } else { if (i===inputs.length - 1 && inputs[i].value !=='' ) { return true; } else if (event.keyCode> 47 && event.keyCode < 58) { inputs[i].value=event.key; if (i !==inputs.length - 1) inputs[i + 1].focus(); event.preventDefault(); } else if (event.keyCode> 64 && event.keyCode < 91) { inputs[i].value=String.fromCharCode(event.keyCode); if (i !==inputs.length - 1) inputs[i + 1].focus(); event.preventDefault(); } } }); } } OTPInput(); });
    </script>
    <style>
        body {
    background-color: white;
}

.height-100 {
    height: 100vh
}

.card {
    width: 400px;
    border: none;
    height: 130px;
    z-index: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: auto;
}

.card h6 {
    color: red;
    font-size: 20px
}

.inputs input {
    width: 40px;
    height: 40px
}

input[type=number]::-webkit-inner-spin-button,
input[type=number]::-webkit-outer-spin-button {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    margin: 0
}

.card-2 {
    background-color: #fff;
    padding: 10px;
    width: 350px;
    height: 100px;
    bottom: -50px;
    left: 20px;
    position: absolute;
    border-radius: 5px
}

.card-2 .content {
    margin-top: 50px
}

.card-2 .content a {
    color: red
}

.form-control:focus {
    box-shadow: none;
    border: 2px solid red
}

.validate {
    border-radius: 20px;
    height: 40px;
    background-color: red;
    border: 1px solid red;
    width: 140px
}
    </style>