$(document).ready(function(){
  $('#user_delivery').change(function(){
    var checked = document.getElementById("user_delivery").checked;

    if(checked) {
      $('.user_delivery_discription').show();
    } else {
      $('.user_delivery_discription').hide();
    }
  });
  var checked = document.getElementById("user_delivery").checked;
      console.log(checked);

  if(checked) {
    $('.user_delivery_discription').show();
  } else {
    $('.user_delivery_discription').hide();
  }
});
