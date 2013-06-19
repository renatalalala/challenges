$(document).ready(function(){
  $('#get_color').on('click', function(e) {
    e.preventDefault();
    $.ajax({
      url: '/color',
      type: 'post',
      dataType: "json"
    }).done(function (response){
      $('#color_me :nth-child(' + response.cell + ')').css('background-color', response.color);
    });
  });
});
