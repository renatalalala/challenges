function Die() {
  this.sides = 6;
  this.value = 0;
}

Die.prototype.roll = function() {
  this.value = Math.floor((Math.random()*this.sides)+1);
};

function Dealer() {
  this.dice = [];
}

Dealer.prototype.shake = function() {
  $.each(this.dice, function(index,die){
    this.roll();
  });
};

$(document).ready(function() {


  var dealer = new Dealer();

  function addDieToDom() {
    $('.dice').append('<div class="die">0</div>');
  }

  // function updateDieToDom(index,value){
    $(.dice .die:nth-chil('+ index + ') ').text(value);

  // }

$('#roller button.add').on('click', function() {
  var die = new Die();
  dealer.dice.push(die);
  console.log(dealer.dice);
  addDieToDom();
});

$('#roller button.roll').on('click', function() {
  // bag.shake();
  // console.log(dealer.dice);
  dealer.shake();
  console.log(dealer.dice);

});
    // $('.die').each(function(k, die) {
    //   bag.dice[k].roll();
    //   var value = bag.dice[k].value;
    //   $(die).text(value);
//   });
});
