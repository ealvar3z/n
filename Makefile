PREFIX ?= /usr/local
BINDIR  := $(PREFIX)/bin
MANDIR  := $(PREFIX)/share/man

.PHONY: install uninstall

install: n n.1
	# Ensure target directories exist
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 n $(DESTDIR)$(BINDIR)/n
	install -d $(DESTDIR)$(MANDIR)/man1
	install -m 644 n.1 $(DESTDIR)$(MANDIR)/man1/n.1
	@echo "Installed n to $(BINDIR), manpage to $(MANDIR)/man1"

uninstall:
	# Remove binary and manpage
	rm -f $(DESTDIR)$(BINDIR)/n
	rm -f $(DESTDIR)$(MANDIR)/man1/n.1
	@echo "Uninstalled n and its manpage"
