platform :ios, "14.0"

use_frameworks!
inhibit_all_warnings!

workspace 'SwiftGen-Example.xcworkspace'

pod 'SwiftGen', '6.4.0'

target "SwiftGen-Example" do
  project 'SwiftGen-Example.xcodeproj'
end

target "Medical" do
  project 'SwiftGen-Example/Modules/Medical/Medical.xcodeproj'

  target :MedicalTests
end

target "Education" do
  project 'SwiftGen-Example/Modules/Education/Education.xcodeproj'

  target :EducationTests
end
