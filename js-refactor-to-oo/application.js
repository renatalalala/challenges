  $(document).ready(function() {
    $('#roller button.add').click(addDie);
    $('#roller button.roll').click(allDie);
  });

  var newDie = '<div class="die">0</div>'
  var value = Math.floor(Math.random()*7);

  function addDie() {
    $('.dice').append(newDie);
  };

  function allDie() {
   $('.die').each(function(index, die) {
    $(die).text(value);
}
 

