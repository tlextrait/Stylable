#
# Stylable.podspec
#

Pod::Spec.new do |s|
  s.name             = 'Stylable'
  s.version          = '0.1.0'
  s.summary          = 'Stylable allows you to apply styles to your controls.'
  s.description      = 'With Stylable you can create pre-defined styles you can apply to your controls, as well as make new types of controls stylable.'
  s.homepage         = 'https://github.com/tlextrait/Stylable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Thomas Lextrait' => 'thomas.lextrait@gmail.com' }
  s.source           = { :git => 'https://github.com/tlextrait/Stylable.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'Stylable/Classes/**/*'
  s.frameworks = 'UIKit'
end
