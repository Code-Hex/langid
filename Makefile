BINARY_NAME = langid
BUILD_FLAGS = -c release
INSTALL_PATH = /usr/local/bin
SWIFT_FORMAT = swift-format

.PHONY: all build clean install uninstall update-deps

all: build

build:
	swift build $(BUILD_FLAGS)

clean:
	swift package clean
	rm -rf .build

install: build
	install -d $(INSTALL_PATH)
	install .build/release/$(BINARY_NAME) $(INSTALL_PATH)

uninstall:
	rm -f $(INSTALL_PATH)/$(BINARY_NAME)

update-deps:
	swift package reset
	swift package update

format:
	$(SWIFT_FORMAT) format -i -r ./Sources
	$(SWIFT_FORMAT) format -i Package.swift
