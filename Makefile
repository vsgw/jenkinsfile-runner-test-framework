# Main makefile for the testing framework. It should be executed by the actual project containing the tests
.PHONY: init

init:
	rm -rf shunit2
	# TODO So far, the released tags do not contains all the macros and functions that
	# master branch does (assertContains, e.g.). Once a new version containing all 
	# the functionalyty is released we should clone using --branch
	git clone --depth 1 https://github.com/kward/shunit2

test:
	$(MAKE) -C tests
