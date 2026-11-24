PY?=python3
PELICAN?=pelican
PELICANOPTS=

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/output
CONFFILE=$(BASEDIR)/pelicanconf.py
PUBLISHCONF=$(BASEDIR)/publishconf.py

PORT?=8000
SERVER?=127.0.0.1

DEBUG ?= 0
ifeq ($(DEBUG), 1)
	PELICANOPTS += -D
endif

RELATIVE ?= 0
ifeq ($(RELATIVE), 1)
	PELICANOPTS += --relative-urls
endif

help:
	@echo 'Makefile for a pelican Web site                                              '
	@echo '                                                                             '
	@echo 'Usage:                                                                       '
	@echo '   make html                           (re)generate the web site             '
	@echo '   make clean                          remove the generated files            '
	@echo '   make regenerate                     regenerate files upon modification    '
	@echo '   make publish                        generate using production settings    '
	@echo '   make serve [PORT=8000]              serve site at http://localhost:8000   '
	@echo '   make devserver [PORT=8000]          serve and regenerate together         '
	@echo '   make stop                           stop local server                     '
	@echo '                                                                             '
	@echo 'Set the DEBUG variable to 1 to enable debugging, e.g. make DEBUG=1 html      '
	@echo 'Set the RELATIVE variable to 1 to enable relative urls                       '
	@echo '                                                                             '

html:
	"$(PELICAN)" "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" $(PELICANOPTS)

clean:
	[ ! -d "$(OUTPUTDIR)" ] || rm -rf "$(OUTPUTDIR)"

regenerate:
	"$(PELICAN)" -r "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" $(PELICANOPTS)

serve:
	"$(PELICAN)" -l "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" -p $(PORT) -b $(SERVER)

devserver:
	"$(PELICAN)" -lr "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(CONFFILE)" -p $(PORT) -b $(SERVER) $(PELICANOPTS)

publish:
	"$(PELICAN)" "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(PUBLISHCONF)" $(PELICANOPTS)

stop:
	@echo "Stopping any pelican servers on port $(PORT)..."
	@lsof -ti:$(PORT) | xargs kill -9 2>/dev/null || true

.PHONY: html help clean regenerate serve devserver publish stop
