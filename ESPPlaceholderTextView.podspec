Pod::Spec.new do |s|
  s.name             = "ESPPlaceholderTextView"
  s.version          = "1.0.2"
  s.summary          = "A custom UITextView with placeholder control."
  s.description  = <<-DESC
                   ESPPlaceholderTextView can easily imported and used in your code.

                   [Or can be used directly in your storyboard](https://www.youtube.com/watch?v=HLOBhqwjdQ8)

                   DESC
  s.homepage         = "https://github.com/xorna/ESPPlaceholderTextView"
  s.license          = 'MIT'
  s.author           = { "André Gustavo Espeiorin" => "andre.espeiorin@gmail.com" }
  s.source           = { :git => "https://github.com/xorna/ESPPlaceholderTextView.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/espeiorin'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Classes/ios'

  s.ios.exclude_files = 'Classes/osx'
  s.public_header_files = 'Classes/**/*.h'
end
