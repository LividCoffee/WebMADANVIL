var http = require('http');
var fs = require('fs');
var links = require('links');

var filename = 'RimWorld';

if (!fs.existsSync("./downloads/" + filename)){
    fs.mkdirSync("./downloads/" + filename);
}

var file = fs.createWriteStream("./downloads/" + filename + "/RimWorld.txt");
var request = http.get("http://31.40.108.21/" + filename + "/" + filename + ".txt", function(response) {
  response.pipe(file);
});

console.log(file);


// reciver
// links
// download
// check
//  ||/\
//  V ||
// download
// install
// remover
