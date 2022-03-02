$(document).ready(function(){
  $("#mySelect").on("change", function(){
    if ($(this).val() == "single_choice") {
      $(".answer-checkbox").on("change", function() {
        $(".answer-checkbox").not(this).prop("checked", false);
      });
    }
    else if ($(this).val() == "multi_choice") {
      $(".answer-checkbox").change(function(){
        var size = $(".answer-checkbox").size();
        var checked = $(".answer-checkbox[value='1']").size();
        if (checked = size - 1){
          $(".answer-checkbox").this.prop("disabled", true);
        }
      });
    }
  });

 $('form').on('click', '.add_fields', function(event) {
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $('.fields').append($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  });
});
