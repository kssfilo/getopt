#!/usr/bin/env bats

@test "--" {
	test $(./test.js -a before -- after -a arg ) == '["before","--","after","-a","arg"]'
}
