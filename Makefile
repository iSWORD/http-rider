export PROJECTNAME=$(shell basename "$(PWD)")

.SILENT: ;               # no need for @

release: ## Step to prepare a new release
	echo "Instructions to prepare release"
	echo "Repo: http-rider: Increment version in httprider/__init__.py"
	echo "Repo: http-rider: Increment version in .travis.yml"
	echo "Commit - Preparing Release x.x.x"
	echo "Check Differences between Releases using Fork"
	echo "Repo: http-rider-osx: Increment version in .travis.yml"
	echo "Commit - Release x.x.x - MacOS"
	echo "Repo: http-rider-win: Increment version in .appveyor.yml"
	echo "Commit - Release x.x.x - Windows"
	echo "Repo: http-rider: Update Download Links in README.md"
	echo "Repo: http-rider-docs: Update content/en/docs/getting-started/installation.md"

black: ## Runs black for code formatting
	black httprider --exclude generated

deps: ## Reinstalls dependencies
	./venv/bin/python3 -m pip install -r requirements/dev.txt

clean: ## Clean package
	rm -rf build dist

setup: ## Re-initiates virtualenv
	rm -rf venv
	python3 -m venv venv
	./venv/bin/python3 -m pip install -r requirements/dev.txt

package: clean ## Rebuilds venv and packages app
	./venv/bin/python3 -m pip install -r requirements/build.txt
	export PYTHONPATH=`pwd`:$PYTHONPATH && ./venv/bin/python3 setup.py bdist_app

uic: ## Converts ui files to python
	for i in `ls resources/ui/*.ui`; do FNAME=`basename $${i} ".ui"`; ./venv/bin/pyuic5 $${i} > "httprider/generated/$${FNAME}.py"; done

res: ## Generates and compresses resource file
	./venv/bin/pyrcc5 -compress 9 -o httprider/generated/resources_rc.py resources/resources.qrc

run: ## Runs the application
	export PYTHONPATH=`pwd`:$PYTHONPATH && ./venv/bin/python3 httprider/application.py

test: ## Run all unit tests
	export PYTHONPATH=`pwd`:$PYTHONPATH && ./venv/bin/pytest httprider/tests

runapp: ## Runs the packaged application
	./dist/HttpRider.app/Contents/MacOS/app

icns: ## Generates icon files from svg
	echo "Run ./mk-icns.sh resources/icons/httprider.svg httprider"

.PHONY: help
.DEFAULT_GOAL := setup

help: Makefile
	echo
	echo " Choose a command run in "$(PROJECTNAME)":"
	echo
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	echo