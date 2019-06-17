$(document).ready(function(){

    $('.calc-btn').on('click', function(e) {
        let btn = e.target.innerHTML;
        num(btn);
    });
    $('.calc-btn-special').on('click', function(e) {
        let btn = e.target.innerHTML;
        num(btn);
    });

  $(document).bind('keypress', function(e) {
      if(e.keyCode==13){
      $('#cal').trigger('click');
      }
  });
  $("#screen").keypress(function(event){
            var keycode = event.keyCode ? event.keyCode : event.which

            if (keycode >= 65 && keycode <= 90){
                return false;
            }
            else if (keycode >= 97 && keycode <= 122) {
                return false;
            }
        });
  showResult = function() {
      var res = eval($('#screen').val());
      $('#screen').val(res);
      //$('#gido').val(eval($('#gido').text()));//

  };
  num = function(n){
    value = $('#screen').val();
    value += n;
    $('#screen').val(value);
  };
  clearScreen = function(){
    $('#screen').val("");
  };

});