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
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Assets {
  internal static let abacus = ImageAsset(name: "abacus")
  internal static let alarmClock = ImageAsset(name: "alarm clock")
  internal static let anatomy = ImageAsset(name: "anatomy")
  internal static let atom = ImageAsset(name: "atom")
  internal static let biology = ImageAsset(name: "biology")
  internal static let blackboard = ImageAsset(name: "blackboard")
  internal static let blogging = ImageAsset(name: "blogging")
  internal static let book = ImageAsset(name: "book")
  internal static let brain = ImageAsset(name: "brain")
  internal static let calendar = ImageAsset(name: "calendar")
  internal static let chemistry = ImageAsset(name: "chemistry")
  internal static let compass2 = ImageAsset(name: "compass 2")
  internal static let compass = ImageAsset(name: "compass")
  internal static let computer = ImageAsset(name: "computer")
  internal static let deskLamp = ImageAsset(name: "desk lamp")
  internal static let diploma = ImageAsset(name: "diploma")
  internal static let dna = ImageAsset(name: "dna")
  internal static let elearning = ImageAsset(name: "elearning")
  internal static let eraser = ImageAsset(name: "eraser")
  internal static let exam = ImageAsset(name: "exam")
  internal static let flask = ImageAsset(name: "flask")
  internal static let geography = ImageAsset(name: "geography")
  internal static let globe = ImageAsset(name: "globe")
  internal static let graduation = ImageAsset(name: "graduation")
  internal static let laptop = ImageAsset(name: "laptop")
  internal static let lightBulb = ImageAsset(name: "light bulb")
  internal static let magnifyingGlass = ImageAsset(name: "magnifying glass")
  internal static let maths = ImageAsset(name: "maths")
  internal static let medal = ImageAsset(name: "medal")
  internal static let notebook = ImageAsset(name: "notebook")
  internal static let onlineLibrary = ImageAsset(name: "online library")
  internal static let paintPalette = ImageAsset(name: "paint palette")
  internal static let painting = ImageAsset(name: "painting")
  internal static let paper = ImageAsset(name: "paper")
  internal static let pen = ImageAsset(name: "pen")
  internal static let pencil = ImageAsset(name: "pencil")
  internal static let reading = ImageAsset(name: "reading")
  internal static let ruler = ImageAsset(name: "ruler")
  internal static let schoolBag = ImageAsset(name: "school bag")
  internal static let schoolBell = ImageAsset(name: "school bell")
  internal static let schoolDesk = ImageAsset(name: "school desk")
  internal static let score = ImageAsset(name: "score")
  internal static let student2 = ImageAsset(name: "student 2")
  internal static let student = ImageAsset(name: "student")
  internal static let tablet = ImageAsset(name: "tablet")
  internal static let teacher2 = ImageAsset(name: "teacher 2")
  internal static let teacher = ImageAsset(name: "teacher")
  internal static let telescope = ImageAsset(name: "telescope")
  internal static let test = ImageAsset(name: "test")
  internal static let trophy = ImageAsset(name: "trophy")
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

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
