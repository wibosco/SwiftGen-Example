// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Assets {
  internal static let accentColor = ColorAsset(name: "AccentColor")
  internal static let juggling2 = ImageAsset(name: "Juggling 2")
  internal static let juggling = ImageAsset(name: "Juggling")
  internal static let acrobaticBike = ImageAsset(name: "acrobatic bike")
  internal static let balloonDog = ImageAsset(name: "balloon dog")
  internal static let book = ImageAsset(name: "book")
  internal static let bunting = ImageAsset(name: "bunting")
  internal static let cabaret = ImageAsset(name: "cabaret")
  internal static let cannon = ImageAsset(name: "cannon")
  internal static let carousel2 = ImageAsset(name: "carousel 2")
  internal static let carousel = ImageAsset(name: "carousel")
  internal static let circus = ImageAsset(name: "circus ")
  internal static let circus1 = ImageAsset(name: "circus 1")
  internal static let circus2 = ImageAsset(name: "circus 2")
  internal static let circus3 = ImageAsset(name: "circus 3")
  internal static let circus4 = ImageAsset(name: "circus 4")
  internal static let circusTent = ImageAsset(name: "circus tent")
  internal static let clawMachine = ImageAsset(name: "claw machine")
  internal static let clown = ImageAsset(name: "clown")
  internal static let cottonCandy = ImageAsset(name: "cotton candy")
  internal static let dnaStructure = ImageAsset(name: "dna structure")
  internal static let drum = ImageAsset(name: "drum")
  internal static let entrance = ImageAsset(name: "entrance")
  internal static let ferrisWheel = ImageAsset(name: "ferris wheel")
  internal static let fireworks = ImageAsset(name: "fireworks")
  internal static let foodStand = ImageAsset(name: "food stand")
  internal static let fortuneTeller = ImageAsset(name: "fortune teller")
  internal static let fortuneWheel = ImageAsset(name: "fortune wheel")
  internal static let gumMachine = ImageAsset(name: "gum machine")
  internal static let iceCreamCone = ImageAsset(name: "ice cream cone")
  internal static let jester = ImageAsset(name: "jester")
  internal static let knife = ImageAsset(name: "knife")
  internal static let lion = ImageAsset(name: "lion")
  internal static let lollipop = ImageAsset(name: "lollipop")
  internal static let magicBox2 = ImageAsset(name: "magic box 2")
  internal static let magicBox = ImageAsset(name: "magic box")
  internal static let magician = ImageAsset(name: "magician")
  internal static let megaphone = ImageAsset(name: "megaphone")
  internal static let mime = ImageAsset(name: "mime")
  internal static let monkey = ImageAsset(name: "monkey")
  internal static let pokerCards = ImageAsset(name: "poker cards")
  internal static let popcorn = ImageAsset(name: "popcorn")
  internal static let poster = ImageAsset(name: "poster")
  internal static let rabbit = ImageAsset(name: "rabbit")
  internal static let ring = ImageAsset(name: "ring")
  internal static let ship = ImageAsset(name: "ship")
  internal static let stageLights = ImageAsset(name: "stage lights")
  internal static let strongman = ImageAsset(name: "strongman")
  internal static let ticketBox = ImageAsset(name: "ticket box")
  internal static let ticket = ImageAsset(name: "ticket")
  internal static let trapezeArtist = ImageAsset(name: "trapeze artist")
  internal static let unicycle = ImageAsset(name: "unicycle")
  internal static let whip = ImageAsset(name: "whip")
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
}

internal extension ImageAsset.Image {
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
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
