require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNPayjpIOS"
  s.version      = package["version"]
  s.summary      = "payjp sdk wrapper for react native"
  s.homepage     = "https://github.com/sunaokumura/react-native-payjp"
  s.license      = "MIT"
  s.authors      = package['author']
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/sunaokumura/react-native-payjp", :tag => "v#{s.version}" }

  s.source_files  = "ios/**/*.{h,m}"

  s.dependency "React"
end
