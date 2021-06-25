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
  internal static let animalVaccine = ImageAsset(name: "animal vaccine")
  internal static let bacteria = ImageAsset(name: "bacteria")
  internal static let bandAid = ImageAsset(name: "band aid")
  internal static let bloodTest = ImageAsset(name: "blood test")
  internal static let bloodType = ImageAsset(name: "blood type")
  internal static let calendar = ImageAsset(name: "calendar")
  internal static let chemotherapy = ImageAsset(name: "chemotherapy")
  internal static let chromosome = ImageAsset(name: "chromosome")
  internal static let clock = ImageAsset(name: "clock")
  internal static let decreasing = ImageAsset(name: "decreasing")
  internal static let dnaStructure = ImageAsset(name: "dna structure")
  internal static let doctor2 = ImageAsset(name: "doctor 2")
  internal static let doctor = ImageAsset(name: "doctor")
  internal static let document = ImageAsset(name: "document")
  internal static let dosage = ImageAsset(name: "dosage")
  internal static let experiment = ImageAsset(name: "experiment")
  internal static let eyeGlasses = ImageAsset(name: "eye glasses")
  internal static let faceMask2 = ImageAsset(name: "face mask 2")
  internal static let faceMask = ImageAsset(name: "face mask")
  internal static let hospital = ImageAsset(name: "hospital")
  internal static let increasing = ImageAsset(name: "increasing")
  internal static let injection = ImageAsset(name: "injection")
  internal static let inspection = ImageAsset(name: "inspection")
  internal static let laboratory = ImageAsset(name: "laboratory")
  internal static let medicalRecords = ImageAsset(name: "medical records")
  internal static let microbiology = ImageAsset(name: "microbiology")
  internal static let microscope = ImageAsset(name: "microscope")
  internal static let oralVaccine = ImageAsset(name: "oral vaccine")
  internal static let pipette = ImageAsset(name: "pipette")
  internal static let prohibition2 = ImageAsset(name: "prohibition 2")
  internal static let prohibition3 = ImageAsset(name: "prohibition 3")
  internal static let prohibition = ImageAsset(name: "prohibition")
  internal static let protect = ImageAsset(name: "protect")
  internal static let research = ImageAsset(name: "research")
  internal static let rubberGloves = ImageAsset(name: "rubber gloves")
  internal static let sanitizer = ImageAsset(name: "sanitizer")
  internal static let stethoscope = ImageAsset(name: "stethoscope")
  internal static let syringe = ImageAsset(name: "syringe")
  internal static let test = ImageAsset(name: "test")
  internal static let thermometer2 = ImageAsset(name: "thermometer 2")
  internal static let thermometer = ImageAsset(name: "thermometer")
  internal static let ticket = ImageAsset(name: "ticket")
  internal static let tonometer = ImageAsset(name: "tonometer")
  internal static let vaccine2 = ImageAsset(name: "vaccine 2")
  internal static let vaccine3 = ImageAsset(name: "vaccine 3")
  internal static let vaccine4 = ImageAsset(name: "vaccine 4")
  internal static let vaccine = ImageAsset(name: "vaccine")
  internal static let virus2 = ImageAsset(name: "virus 2")
  internal static let virus3 = ImageAsset(name: "virus 3")
  internal static let virus = ImageAsset(name: "virus")
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
