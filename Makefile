DESTDIR ?= /
PREFIX ?= /usr
SYSCONFDIR ?= /etc

USR = $(DESTDIR)/$(PREFIX)
BIN = $(USR)/bin/
LIB = $(USR)/lib/
ETC = $(DESTDIR)/etc/
SHARE = $(USR)/share/

all: ppds

ppds:
	LC_ALL=C ppdc brother_ql_820nwb.drv


install:
	mkdir -p $(BIN)
	mkdir -p $(LIB)/cups/filter
	mkdir -p $(SHARE)
	mkdir -p $(ETC)

	install rastertobrotherql $(LIB)/cups/filter/
	install ppd/pybrotherql.ppd $(SHARE)/cups/model/
