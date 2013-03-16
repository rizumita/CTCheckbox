#
# Be sure to run `pod spec lint CTCheckbox.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec. Optional attributes are commented.
#
# For details see: https://github.com/CocoaPods/CocoaPods/wiki/The-podspec-format
#
Pod::Spec.new do |s|
  s.name         = "CTCheckbox"
  s.version      = "0.0.1"
  s.summary      = "CTCheckbox is a checkbox UI component library for iOS."
  s.homepage     = "https://github.com/rizumita/CTCheckbox"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ryoichi Izumita" => "r.izumita@caph.jp" }
  s.source       = { :git => "https://github.com/rizumita/CTCheckbox.git", :tag => "0.0.1" }
  s.platform     = :ios, '5.0'
  s.source_files = 'CTCheckbox/CTCheckbox.{h,m}'
  s.requires_arc = true
end
