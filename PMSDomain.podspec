#
# Be sure to run `pod lib lint PMSDomain.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PMSDomain'
  s.version          = '1.0.0'
  s.summary          = 'PMSDomain for PMS App'
  s.swift_version    = '5.4'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'PMSDomain for PMS App.'

  s.homepage         = 'https://github.com/PMS-Frameworks/PMSDomain'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'goeun1001' => 'gogo8272@gmail.com' }
  s.source           = { :git => 'https://github.com/PMS-Frameworks/PMSDomain.git', :tag => s.version.to_s }
  s.resource_bundle = { "Localization" => ["PMSDomain/Classes/Localize/*/**"] }
  # s.xcconfig = { 'OTHER_LDFLAGS' => '$(inherited) -ObjC' }
  # s.xcconfig = { "OTHER_LINKER_FLAGS" => '$(inherited) -ObjC'}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'PMSDomain/Classes/**/*'
  
  s.resource_bundle = {
    'PMSDomain' => ['PMSDomain/Assets/*']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.framzeworks = 'UIKit', 'MapKit'
  s.dependency 'PMSRxModule', '~> 1.0.0'
  s.dependency 'Moya', '~> 14.0'
  # s.ios.vendored_frameworks = 'FirebaseAnalytics.framework, GoogleAppMeasurement.framework'
  # s.frameworks = 'FirebaseAnalytics', 'GoogleAppMeasurement'
end
