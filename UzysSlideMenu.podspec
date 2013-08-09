Pod::Spec.new do |s|
  s.name        = 'UzysSlideMenu'
  s.version     = '1.0.0'
  s.authors     = { 'Uzys Jung' => 'uzysjung@gmail.com' }
  s.homepage    = 'https://github.com/uzysjung/UzysSlideMenu.git'
  s.summary     = 'Slide Dropdown Menu.'
  s.source      = { :git => 'https://github.com/romaonthego/REMenu.git',
                    :tag => '1.0.0' }
  s.license     = { :type => "MIT", :file => "LICENSE" }

  s.platform = :ios, '5.0'
  s.requires_arc = false
  s.source_files = 'UzysSlideMenu/Library'
  s.public_header_files = 'UzysSlideMenu/Library/*.h'

  s.ios.deployment_target = '5.0'
  s.ios.frameworks = 'QuartzCore'
end
