SHELL = /bin/bash

BOLD=\033[1m
NORMAL=\033[0m

APPNAME = a5
URL = https://github.com/ls4-software/a5

VER := $(shell python -c "import a5; print(a5.__version__)")
BANNER := $(shell echo -e "This is $(BOLD)$(APPNAME) v$(VER)$(NORMAL) ($(URL))")

$(info $())
$(info $(BANNER))
$(info $())


doc_reqs:
	pip install -q -r requirements.docs.txt


docs: ## Build the docs
docs: | doc_reqs 
	export SPHINXOPTS=-W; make -C doc html

