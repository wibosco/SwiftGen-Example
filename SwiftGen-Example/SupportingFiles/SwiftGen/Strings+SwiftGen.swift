// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum Strings {

  internal enum Circus {
    /// Below is a selection of circus icons:
    internal static let description = Strings.tr("Localizable", "Circus.description")
    /// Circus
    internal static let title = Strings.tr("Localizable", "Circus.title")
  }

  internal enum Tab {
    internal enum Item {
      /// Circus
      internal static let circus = Strings.tr("Localizable", "Tab.item.circus")
      /// Education
      internal static let education = Strings.tr("Localizable", "Tab.item.education")
      /// Medical
      internal static let medical = Strings.tr("Localizable", "Tab.item.medical")
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Strings {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
