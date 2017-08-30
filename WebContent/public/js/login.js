var $form = $("form"),
  $successMsg = $(".alert");
$.validator.addMethod("letters", function(value, element) {
  return this.optional(element) || value == value.match(/^[a-zA-Z\s]*$/);
});
$form.validate({
  rules: {
    username: {
      required: true,
    },
    password: {
      required: true,
      minlength: 4
    }
  },
  messages: {
    username: "Username is required",
    password: {
    	required: "Password is required",
    	minlength: "Minimum character is 4"
    }
  },
  submitHandler: function() {
    $successMsg.show();
  }
});