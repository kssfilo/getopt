#!/usr/bin/env node

getopt=require('../lib/getopt');

options="a";

getopt.setopt(options);
var a=null
dump=function(obj){console.log(JSON.stringify(obj))};

getopt.getopt(function(o,p){
});

dump(getopt.params());
process.exit(0);