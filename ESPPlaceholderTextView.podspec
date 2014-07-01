Pod::Spec.new do |s|
  s.name             = "ESPPlaceholderTextView"
  s.version          = "1.0.0"
  s.summary          = "A custom UITextView with placeholder control."
  s.homepage         = "https://github.com/xorna/ESPPlaceholderTextView"
  s.license          = 'MIT'
  s.author           = { "André Gustavo Espeiorin" => "andre.espeiorin@gmail.com" }
  s.source           = { :git => "https://github.com/xorna/ESPPlaceholderTextView.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/espeiorin'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Classes/ios'

  s.ios.exclude_files = 'Classes/osx'
  s.public_header_files = 'Classes/**/*.h'
end