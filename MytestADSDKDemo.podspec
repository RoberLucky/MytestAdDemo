#
# Be sure to run `pod lib lint MytestADSDKDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MytestADSDKDemo'
  s.version          = '1.1.1'
  s.summary          = 'A short description of MytestADSDKDemo.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                      test adsdkdemo desc
                       DESC

  s.homepage         = 'https://github.com/RoberLucky/MytestAdDemo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'RoberLucky' => 'lyx411326@163.com' }
  s.source           = { :git => 'https://github.com/RoberLucky/MytestAdDemo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'MytestADSDKDemo'
  
   s.resource_bundles = {
     'MytestADSDKDemo' => ['MytestADSDKDemo/Assets/*']
   }
   
   s.subspec 'Aps' do |aa|
   aa.source_files = 'MytestADSDKDemo/Classes/Aps/*'
   end

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'Google-Mobile-Ads-SDK', '7.68.0'
  s.dependency 'IronSourceSDK', '7.0.4.0'
  s.dependency 'AppLovinSDK', '6.14.9'
  s.dependency 'FBAudienceNetwork', '6.2.1'
  s.dependency 'AmazonPublisherServicesMoPubAdapter', '1.2.0'
  s.dependency 'AmazonPublisherServicesSDK', '3.4.2'
end
