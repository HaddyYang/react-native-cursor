require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNCursor"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]
  
  s.platforms    = { :ios => "9.0", :osx => "10.13" }
  s.source       = { :git => "https://github.com/haddyyang/react-native-cursor.git", :tag => "master" }
  
  s.source_files = "macos/**/*.{h,m,mm}"

  s.dependency "React"
end

  