BATS=node_modules/.bin/bats

test:|node_modules/
	cd tests;../$(BATS) test.bats

$(BATS):
	npm i
