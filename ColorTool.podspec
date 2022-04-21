Pod::Spec.new do |s|
  s.name             = 'ColorTool'
  s.version          = '0.1.0'
  s.summary          = 'ColorTool 本地pods私有仓库搭建'
  s.swift_version    = '5.0'


  s.description      = <<-DESC
TODO: 本地的pods私有仓库搭建以实现组件化功能开发
                       DESC

  s.homepage         = 'https://gitee.com/llyan/devpods'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'llyan' => '1987236381@qq.com' }
  s.source           = { :git => 'https://gitee.com/llyan/devpods.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '9.0'

  s.source_files = 'Devpods/Classes/**/*'


  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
