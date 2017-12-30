var fs = require('fs')
var parse = require('docker')

var dockerFile = fs.readFileSync(__dirname + '/Dockerfile', 'utf8')
var pojo = parse(dockerFile)

console.dir(pojo)