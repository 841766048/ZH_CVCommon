#
#  Be sure to run `pod spec lint ZH_CVCommon.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  # 仓库名称
  spec.name         = "ZH_CVCommon"
  # 仓库版本
  spec.version      = "0.0.1"
  # 描述
  spec.summary      = "ZH_CVCommon 测试工程文件，到期会进行删除"

  # 仓库主页
  spec.homepage     = "https://github.com/841766048/ZH_CVCommon.git"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  # 证书信息，创建仓库时选择的
  spec.license      = { :type => "MIT", :file => "/Users/zhanghaibin/Documents/马甲包/ZH_CVCommon/LICENSE" }

  spec.author             = { "mard002" => "841766048@qq.com" }

  spec.ios.deployment_target = "14.0"
  spec.swift_version = '5.0'

  spec.source       = { :git => "https://github.com/841766048/ZH_CVCommon.git", :tag => "#{spec.version}" }
  # spec.preserve_paths = 'CVCommon.xcframework/**/*'

  # 封装的framework名称
  spec.ios.vendored_frameworks = 'CVCommon.xcframework'
  spec.dependency 'CHGAdapter_swift', '~> 0.8.0'
  spec.dependency 'Moya', '~> 15.0'
  spec.dependency 'Moya/Combine', '~> 15.0'
  spec.dependency 'MJRefresh'
  spec.dependency 'DZNEmptyDataSet'
  spec.dependency 'CocoaLumberjack/Swift'
  spec.dependency 'CombineExt'
  spec.dependency 'Localize-Swift', '~> 3.2'
  spec.dependency 'SSZipArchive'

  # spec.frameworks = 'Combine', 'UIKit', 'Foundation'
  # 工程配置
  spec.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
  spec.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
  # Xcode构建配置优化
  spec.pod_target_xcconfig = {
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',  # 二进制兼容Swift 
    'SWIFT_COMPILATION_MODE' => 'wholemodule',  # 提升编译效率
    'GCC_WARN_INHIBIT_ALL_WARNINGS' => 'NO'     # 显示所有警告
  }


end
