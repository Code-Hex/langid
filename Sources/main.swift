import ArgumentParser
import Foundation
import NaturalLanguage

struct Langid: ParsableCommand {
  static var configuration = CommandConfiguration(
    commandName: "langid",
    abstract: "Detect the language of input text"
  )

  @Argument(help: "The text to detect language for")
  var text: String?

  mutating func run() throws {
    let inputText: String

    if let text = text {
      inputText = text
    } else {
      guard let input = readLine() else {
        throw ValidationError("No input provided")
      }
      inputText = input
    }

    let languageRecognizer = NLLanguageRecognizer()
    languageRecognizer.processString(inputText)

    if let language = languageRecognizer.dominantLanguage {
      print(language.rawValue)
    } else {
      print("unknown")
    }
  }
}

Langid.main()
