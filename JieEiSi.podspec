Pod::Spec.new do |s|
  s.name         = "JieEiSi"
  s.version      = "0.1.5"
  s.summary      = "JieEiSi"

  s.description  = "JieEiSi"

  s.homepage     = "https://github.com/SecretLisa/JieEiSi"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "bang" => "bang590@gmail.com" }
  s.social_media_url   = "http://twitter.com/bang590"

  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/SecretLisa/JieEiSi.git", :tag => s.version }

  s.frameworks   = "Foundation"
  s.weak_framework = "JavaScriptCore"
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = "JieEiSi/*.{h,m}"
    ss.public_header_files = "JieEiSi/*.h"
    ss.resources    = "JieEiSi/*.js"
  end

  s.subspec 'Extensions' do |ss|
    ss.source_files = "Extensions/**/*.{h,m}"
    ss.public_header_files = "Extensions/**/*.h"
    ss.dependency 'JieEiSi/Core'
  end
end
