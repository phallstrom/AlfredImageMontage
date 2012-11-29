SOURCE_FILES = montage.sh icon.png info.plist kudos.plist
PKG_FILES = $(SOURCE_FILES) update.xml
EXTENSION = ImageMontage.alfredextension
INSTALL_DIR = $(HOME)/Library/Application Support/Alfred/extensions/scripts/ImageMontage
VERSION = 1.0
COMMENTS = 

all: $(EXTENSION)

$(EXTENSION): $(SOURCE_FILES) VERSION
	zip -T $(EXTENSION) $(PKG_FILES)

VERSION:
	sed -i '' -e "s/^# Version: .*/# Version: $(VERSION)/" info.plist
	sed -i '' -e "s#<version>.*</version>#<version>$(VERSION)</version>#" update.xml
	sed -i '' -e "s#<version>.*</version>#<version>$(VERSION)</version>#" latest.xml
	sed -i '' -e "s#<comments>.*</comments>#<comments>$(COMMENTS)</comments>#" latest.xml

clean:
	rm -rf $(EXTENSION)

local-install:
	mkdir -p "$(INSTALL_DIR)" 2> /dev/null
	cp $(PKG_FILES) "$(INSTALL_DIR)/"

