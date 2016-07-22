Pod::Spec.new do |s|

  s.name         = "SimpleJSONParser"
  s.version      = "0.1.0"
  s.summary      = "SimpleJSONParser lets a user simply parse JSON to any NSObject."
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.homepage = "https://ua.linkedin.com/in/ihor-rapalyuk-9620baa1"

  s.license = { :type => 'MIT', :file => 'LICENSE' }

  s.author = { "LETZGRO" => "https://ua.linkedin.com/in/ihor-rapalyuk-9620baa1" }

  s.source = { :git => "https://github.com/letzgro/GooglePlacesPicker.git", :tag => "0.1.0"}

  s.source_files  = "/**/*.{swift,storyboard,xib}"

  s.resources = "*.{xcassets}"

  s.framework  = "Foundation"

end