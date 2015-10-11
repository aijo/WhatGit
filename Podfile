
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

def common_pods
    pod 'Alamofire', '~> 2.0'
    pod 'SwiftyJSON', '~> 2.3'
    pod 'OHHTTPStubs', '~> 4.3'
end

target 'WhatGit' do
	common_pods
end

target 'WhatGitTests' do
   common_pods
end

target 'WhatGitUITests' do
    common_pods
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['DYLIB_COMPATIBILITY_VERSION'] = ''
        end
    end
end
