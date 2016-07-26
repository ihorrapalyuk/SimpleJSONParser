Pod::Spec.new do |s|

  s.name         = "SimpleJSONParser"
  s.version      = "0.1.0"
  s.summary      = "SimpleJSONParser lets a user simply parse JSON to any NSObject."
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.homepage = "https://www.facebook.com/profile.php?id=100004234983243"
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { "Ihor Rapalyuk" => "i.rapalyuk2012@gmail.com" }
  s.source = { :git => "https://github.com/ihorrapalyuk/SimpleJSONParser.git", :tag => "0.1.0"}
  s.source_files  = "Classes/**/*.{swift,h,m}"
  s.requires_arc = true
end
