# Simple Makefile to automate doc generation locally
# Copyright (C) 2020 Tecnalia Research and Innovation
# Distributed under the Non-Profit Open Software License 3.0 (NPOSL-3.0).

SILENT = @
ADOC_FILES = $(wildcard *.adoc modules/ROOT/pages/*.adoc)
HTML_FILES = $(subst .adoc,.html,$(ADOC_FILES))
all: $(HTML_FILES)

check:
	$(SILENT) echo "ADOC_FILES = $(ADOC_FILES)"
	$(SILENT) echo "HTML_FILES = $(HTML_FILES)"

%.html: %.adoc
	$(SILENT) echo "Generating $^"
	$(SILENT) asciidoctor $^
