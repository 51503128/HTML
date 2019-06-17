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
  showResult = function() {
      console.log(eval($('#screen').val()));
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

// Restricts input for each element in the set of matched elements to the given inputFilter.
  (function($) {
    $.fn.inputFilter = function(inputFilter) {
      return this.on("input keydown keyup mousedown mouseup select contextmenu drop", function() {
        if (inputFilter(this.value)) {
          this.oldValue = this.value;
          this.oldSelectionStart = this.selectionStart;
          this.oldSelectionEnd = this.selectionEnd;
        } else if (this.hasOwnProperty("oldValue")) {
          this.value = this.oldValue;
          this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
        }
      });
    };
  }(jQuery));
  $("#screen").inputFilter(function(value) {
    return /^\d*$/.test(value);
  });
});