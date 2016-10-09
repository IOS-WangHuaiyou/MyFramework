Pod::Spec.new do |s|
    s.name         = "MyFramework"
    s.version      = "0.0.1"
    s.summary      = '测试库程序'
    s.homepage     = "https://github.com/IOS-WangHuaiyou/MyFramework"
    s.license      = 'MIT'
    s.author       = { 'wanghuaiyou' => '915325011@qq.com' }
    s.source       = { :git => 'https://github.com/IOS-WangHuaiyou/MyFramework.git'}
    s.platform     = :ios
    s.source_files  = 'MyFramework/**/*.{h,m}'
    s.frameworks = "Foundation", "UIKit"
end
