#!/usr/bin/env bats

@test "--" {
	echo $(./test.js -a before -- after -a arg )|grep ',"before","--","after","-a","arg"]'
}
