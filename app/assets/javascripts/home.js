$(document).ready(function(e) {

    var nowTemp = new Date();
    var now = (nowTemp.getMonth()+1)+'-'+ nowTemp.getDate()+'-'+ nowTemp.getFullYear();


    $('#chkin').datepicker({
        orientation: "bottom",
        autoclose: true,
        todayHighlight: true,
        startDate:now
        }).on('changeDate', function(ev) {
            $('#chkout').trigger('click');
            checko.data('datepicker').setStartDate(ev.date);
        });

    checko = $('#chkout').datepicker({
        startDate:now,
        orientation: "bottom",
        autoclose: true,
    });

    $('#glyph-chkin').click(function(event){
      event.preventDefault();
      $('#chkin').data("datepicker").show();
    });

    $('#glyph-chkout').click(function(event){
      event.preventDefault();
      $('#chkout').data("datepicker").show();
    });
});
