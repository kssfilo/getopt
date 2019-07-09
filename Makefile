BATS=node_modules/.bin/bats

test:|node_modules/
	cd tests;../$(BATS) test.bats

clean:
	-@rm -r package-lock.json node_modules 2>/dev/null;true

$(BATS):
	npm i
