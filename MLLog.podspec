Pod::Spec.new do |spec|
  spec.name         = 'MLLog'
  spec.version      = '1.0.2'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/nomoneynohoney/MLLog'
  spec.authors      = { 'Marc Liu' => 'sorrystyle@gapp.nthu.edu.tw' }
  spec.summary      = 'A NSLog replacement for showing log window on device.'
  spec.source       = { :git => 'https://github.com/nomoneynohoney/MLLog.git', :tag => '1.0.2' }
  spec.module_name  = 'MLLog'

  spec.ios.deployment_target  = '8.0'

  spec.source_files       = 'MLLog/*.{h,m}'
  spec.resource		= 'MLLog/*.{storyboard,png}'
  spec.framework      = 'SystemConfiguration'
  spec.ios.framework  = 'UIKit'
end
