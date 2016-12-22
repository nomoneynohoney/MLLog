Pod::Spec.new do |s|  
  s.name             = "MLLog"  
  s.version          = "1.0.0"  
  s.summary          = "An NSLog replacement for showing log window on device."  
  s.description      = <<-DESC  
                       An NSLog replacement for presenting a resizable log window on devide or simulator, may easily monitor runtime varibles on multiple devices without connect to Xcode, implemented by Objective-C.  
                       DESC  
  s.homepage         = "https://github.com/nomoneynohoney/MLLog"  
  # s.screenshots    = ""  
  s.license          = 'MIT'  
  s.author           = { "Marc Liu" => "sorrystyle@gapp.nthu.edu.tw" }  
  s.source           = { :git => "https://github.com/nomoneynohoney/MLLog.git", :tag => s.version.to_s }  
  # s.social_media_url = 'https://www.facebook.com/marc.liu.tw'  
  
  s.platform     = :ios, '7.0'  
  # s.ios.deployment_target = '5.0'  
  # s.osx.deployment_target = '10.7'  
  s.requires_arc = true  
  
  s.source_files = 'MLLog/*'  
  # s.resources = 'Assets'  
  
  # s.ios.exclude_files = 'Classes/osx'  
  # s.osx.exclude_files = 'Classes/ios'  
  # s.public_header_files = 'Classes/**/*.h'  
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'  
  
end  
