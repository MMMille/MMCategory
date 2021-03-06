Pod::Spec.new do |s|
  s.name         = 'MMMCategory'
  s.summary      = 'A category of iOS components.'
  s.version      = '0.0.9.1'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'MMMille' => 'xuemingluan@gmail.com' }
  #s.social_media_url = 'http://blog.MMMille.com'
  s.homepage     = 'https://github.com/MMMille/MMCategory'
  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.source       = { :git => 'https://github.com/MMMille/MMCategory.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'MMCategory/MMCategory.h'
  s.public_header_files = 'MMCategory/MMCategory.h'

  s.subspec 'Base' do |ss|
    ss.source_files = 'MMCategory/Base/**/*.{h,m}'
  end

  s.subspec 'UIKit' do |ss|
    ss.source_files = 'MMCategory/UIKit/**/*.{h,m}'
    ss.dependency 'Masonry'
    ss.dependency 'MMMCategory/Base'
  end

  s.subspec 'Foundation' do |ss|
    ss.source_files = 'MMCategory/Foundation/**/*.{h,m}'
  end

  s.libraries = 'z', 'sqlite3'
  s.frameworks = 'UIKit', 'CoreFoundation', 'CoreText', 'CoreGraphics', 'CoreImage', 'QuartzCore', 'ImageIO', 'AssetsLibrary', 'Accelerate', 'MobileCoreServices', 'SystemConfiguration'
  s.dependency 'Masonry'
end
#pod trunk push MMMCategory.podspec --allow-warnings
#pod repo push MMMCategory MMMCategory.podspec --allow-warnings --sources='https://github.com/CocoaPods/Specs.git'