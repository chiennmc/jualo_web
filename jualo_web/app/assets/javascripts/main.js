$(document).ready(function() {

  $('#seller-mb').bind('click', function() {
    $('#mb-number-popup').toggleClass('hide')
  });

  $('#share-ad-btn').bind('click', function() {
    $('#shareBlock').toggleClass('hide')
  });
  
  $('.bxslider').bxSlider()

  $('.bx-default-pager').remove()
})