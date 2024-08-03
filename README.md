# langid

`langid` is a command-line tool for detecting the language of input text using Apple's Natural Language Processing framework.

## Prerequisites

- macOS v14 or later
- Swift 5.10 or later

## Building

To build the project, run:

```bash
make build
```

This command compiles the project in release mode.

## Installing

To install the `langid` command to `/usr/local/bin`, run:

```bash
sudo make install
```

This command builds the project and copies the executable to `/usr/local/bin`.

## Uninstalling

To remove the installed `langid` command, run:

```bash
sudo make uninstall
```

## Cleaning

To clean the build artifacts, run:

```bash
make clean
```

## Updating Dependencies

To update the project dependencies, run:

```bash
make update-deps
```

## Formatting Code

To format all Swift files in the project using swift-format, run:

```bash
make format
```

This command will format all Swift files in the `Sources` directory and the `Package.swift` file.

## Usage

After installation, you can use `langid` in two ways:

1. Provide text as a command-line argument:

   ```bash
   langid "Your text here"
   ```

2. Pipe text to `langid`:

   ```bash
   echo "Your text here" | langid
   ```

The command will output the detected language code (e.g., "en" for English, "ja" for Japanese).

## Example

```bash
$ langid "Hello, world!"
en

$ echo "Bonjour le monde" | langid
fr
```

## License

MIT License
