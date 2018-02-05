$(document).ready(function(){
  $('#user_delivery').change(function(){
    if (typeof checked !== 'undefined' && checked != null) {
      var checked = document.getElementById("user_delivery").checked;
      if(checked) {
        $('.user_delivery_discription').show();
      } else {
        $('.user_delivery_discription').hide();
      }
    }
  });
  if (typeof checked !== 'undefined' && checked != null) {
    var checked = document.getElementById("user_delivery").checked;
    if(checked) {
      $('.user_delivery_discription').show();
    } else {
      $('.user_delivery_discription').hide();
    }
  }
});
