$(document).ready(function() {

  $('#seller-mb').bind('click', function() {
    $('#mb-number-popup').toggleClass('hide')
  });

  $('#share-ad-btn').bind('click', function() {
    $('#shareBlock').toggleClass('hide')
  });
  
  $('.bxslider').bxSlider()

  $('.bx-default-pager').remove()

  $('#search_button').bind('click', function(){
    search_value = $('#search_field').val()
    debugger
    if($.isNumeric(search_value)){
      console.log("Number")
    }else if(search_value.includes("#")){
      console.log("#")
    }else{
      console.log(search_value)
    }
  })
})