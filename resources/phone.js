function () {
  var number = '9';
  for (var i = 0; i < 9; i++) {
    number += Math.floor(Math.random() * 10);
  }
  return number;
}
