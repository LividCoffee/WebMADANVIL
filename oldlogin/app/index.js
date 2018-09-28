var fs = require('fs');

Host = "http://31.40.108.21"
var reciver = require('./reciver.js');
var links = require('./links');

setTimeout(function () {
  if (!fs.existsSync("./downloads/" + filename)){
      fs.mkdirSync("./downloads/" + filename);
  };
  n = 0;
  var checkerload = require('./checkerload.js');
  for (n = 1; n <= count; n++)
  {
  var check = require('./check.js');
  }

}, 500);
