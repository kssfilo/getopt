# @kssfilo/getopt (forked from dresende's getopt)

## API

### setopt(options, [arguments])

Set the `options` for your program. If `arguments` is not set, `process.argv` is used.

Options is a string containing letters that correspond to the options you want. If a letter
is proceeded by a `:`, the option has a required argument. If a letter is proceeded by double
`:`, the option has an optional argument.

This function throws exceptions when an invalid option is set and when a required option is
not set.

### getopt(callback)

Callback will be called with 2 arguments, where the first is the option name (a letter) and
the second is the option parameter(s) or the number of times the option has appeared.

## Example

An example is worth 1000 words..

    var opt = require('getopt');
    
    try {
		// set options, 2nd argument is optional, if not set it will fetch process.argv
		opt.setopt("abc:d::", [ "-ab", "-ac", "34", "-d" ]);
	} catch (e) {
		// exceptions are thrown when an invalid option
		// is set or a required parameter is not set
		console.dir(e);
	}
    
    opt.getopt(function (o, p) {
    	switch (o) {
    		case "a":
    		case "b":
    			console.log("option %s set %d times", o, p);
    			break;
    		case "c":
    			console.log("option c param = '%s'", p[0]); 
    			break;
    		case "d":
    			console.log("option d set");
    	}
    });

## About this version

This is forked version of dresende's great getopt module for double hyphen separator (--) support.

Difference from original version is 

- if double hyphen (--) is in arguments , remaining arguments will be pushed into the params array which able to get from opt.param() evenif that is started from hyphen(-)
- also stores double hyphen "--" into param() array for detecting separation point from user program.

e.g. 

	$ userprogram.js -a -b file1 -- file2 -a -c

will be

    console.log(opt.params());  #after opt.setopt(..)
	[....,"file1","--","file2","-a","-c"]

I think that it is "breaking changes". so publishing by myself.

## Change Log

- 0.2.x : @kssfilo's version
- 0.1.0 : dresende's version
