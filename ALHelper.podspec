Pod::Spec.new do |s|
  s.name             = 'ALHelper'
  s.version          = '0.0.1'
  s.summary          = 'A simple layout library that provides some convenience when using AutoLayout.'
  s.homepage         = 'https://github.com/chadgarrett/ALHelper'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Chad Garrett' => 'cgarrett@retrorabbit.co.za' }
  s.source           = { :git => 'https://github.com/chadgarrett/ALHelper.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/ALHelper/**/*'
end
