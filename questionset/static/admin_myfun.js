

//For changing Status for Particular account
function Loader()
{
  $('#id_paper').change(
  function() {
    var paper=$(this).val();
    var que_num = $('#id_que_num').val();
    if (window.location.href.includes('add')){
      $.ajax({
        url: '/AJAX/get_next_que_num',
        data: {
          'paper': paper
        },
        dataType: 'json',
        async:false,
        success: function (data) {
          $('#id_que_num').val(data.next_que_num);
          $('#id_paragraph').children('option:not(:first)').remove();

          $.each(data.paragraph, function(key,value){
            $("#id_paragraph").append(new Option(value,key));
          });
        }
      });
    }else if(window.location.href.includes('change')){
      $.ajax({
        url: '/AJAX/get_next_que_num',
        data: {
          'paper': paper
        },
        dataType: 'json',
        async:false,
        success: function (data) {
          $('#id_paragraph').children('option:not(:first)').remove();
          $.each(data.paragraph, function(key,value){
            $("#id_paragraph").append(new Option(value,key));
          });
          $('#id_paragraph').val(selected_para);

        }
      });
    }
}
);

}


//While Document getting created
$( window ).on( "load", function(){
  //After Page Loaded
  $('#id_paper').change();
  if(window.location.href.includes('change')){
    window.selected_para = $('#id_paragraph').val();
    console.log(selected_para);
  }
$(document).ready(Loader);
} );
