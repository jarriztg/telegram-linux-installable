install:
	@install -d $(DESTDIR)/usr/bin
	@install -v -m 755 Telegram $(DESTDIR)/usr/bin/
	@install -v -m 755 Updater $(DESTDIR)/usr/bin/
	@install -v -m 644 ./desktop/telegram.desktop $(DESTDIR)/usr/share/applications/
	@rm -rf /usr/share/telegram && mkdir /usr/share/telegram
	@install -v -m 644 ./desktop/telegram.png $(DESTDIR)/usr/share/telegram/
    
remove:
	@echo "Removing..."
	@rm -f $(DESTDIR)/usr/bin/Telegram $(DESTDIR)/usr/bin/Updater
	@rm -rf $(DESTDIR)/usr/share/telegram/ $(DESTDIR)/usr/share/applications/telegram.desktop
	@echo "Done!"
