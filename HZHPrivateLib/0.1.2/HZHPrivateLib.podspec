

Pod::Spec.new do |s|
  s.name             = 'HZHPrivateLib'
  s.version          = '0.1.2'
  s.summary          = '学习制作和更新私有库'

  s.description      = <<-DESC
仅仅使用page展示一张美女图片，后续后更新添加新的功能
                       DESC

  s.homepage         = 'https://github.com/HZHCoder1990/HZHPrivateLib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HZHCoder1990' => '2282802627@qq.com' }
  s.source           = { :git => 'https://github.com/HZHCoder1990/HZHPrivateLib.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.frameworks = 'UIKit'
  # 以上基础信息不会修改

  #  s.source_files = 'HZHPrivateLib/Classes/**/*'
  #  s.public_header_files = 'Pod/Classes/**/*.h'
  #  s.dependency 'Masonry'
  #  s.dependency 'SDWebImage'

  # HZHBrowser模块依赖两个公开库: Masonry和SDWebImage，一个子模块: HZHDefine
  s.subspec 'HZHBrowser' do |sp|
    sp.source_files = 'HZHPrivateLib/Classes/HZHBrowser/*'
    sp.public_header_files = 'Pod/Classes/HZHBrowser/*.h'
    sp.dependency 'Masonry'
    sp.dependency 'SDWebImage'
    sp.dependency 'HZHPrivateLib/HZHDefine'
  end

  # HZHPreView模块依赖两个公开库: Masonry和ReactiveObjC，两个子模块: HZHDefine和HZHBrowser
  s.subspec 'HZHPreView' do |sp|
    sp.source_files = 'HZHPrivateLib/Classes/HZHPreView/*'
    sp.public_header_files = 'Pod/Classes/HZHPreView/*.h'
    sp.dependency 'Masonry'
    sp.dependency 'ReactiveObjC'
    sp.dependency 'HZHPrivateLib/HZHDefine'
    sp.dependency 'HZHPrivateLib/HZHBrowser'
  end

  # HZHDefine
  s.subspec 'HZHDefine' do |sp|
    sp.source_files = 'HZHPrivateLib/Classes/HZHDefine/*'
    sp.public_header_files = 'Pod/Classes/HZHDefine/*.h'
  end
end
