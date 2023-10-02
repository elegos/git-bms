prefix = /usr/local

EXEC_FILES=bin/git-bms

SCRIPT_FILES =bin/git-bms
SCRIPT_FILES+=bin/git-bms-feature
SCRIPT_FILES+=bin/git-bms-fix
SCRIPT_FILES+=bin/git-bms-init
SCRIPT_FILES+=bin/git-bms-promote
SCRIPT_FILES+=bin/gitbmscommon

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)
	install -m 0644 $(SCRIPT_FILES) $(prefix)

uninstall:
	test -d $(prefix)/bin \
		&& cd $(prefix) \
		&& rm -f $(EXEC_FILES) $(SCRIPT_FILES)
