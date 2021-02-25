Pod::Spec.new do |s|
  s.name = "MytestADSDKDemo"
  s.version = "1.1.1"
  s.summary = "A short description of MytestADSDKDemo."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"RoberLucky"=>"lyx411326@163.com"}
  s.homepage = "https://github.com/RoberLucky/MytestAdDemo"
  s.description = "test adsdkdemo desc"
  s.frameworks = "UIKit"
  s.source = { :path => '.' }

  s.ios.deployment_target    = '9.0'
  s.ios.vendored_framework   = 'ios/MytestADSDKDemo.framework'
end
