#
#  Be sure to run `pod spec lint DMGExtensionsTools.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  
  spec.name         = "DMGExtensionsTools"

  spec.version      = "0.1.0"

  spec.summary      = "Extensions Libraries"

  spec.description  = <<-DESC
                      * Extensions Libraries Tools.
                   DESC

  spec.homepage     = "http://www.danielmg.me"

  spec.license      = { :type => 'Copyright', :text => <<-LICENSE
                            * Copyright 2020
                            * Permission is granted to Daniel Martinez Gonzalez
                            * All rights reserved
                            LICENSE
                    }

  spec.author             = { "Daniel Martinez" => "dmg241082@gmail.com" }

  spec.platform              = :ios

  spec.ios.deployment_target = "10.0"

  spec.swift_version         = '4.0'

  spec.source       = { :git => "https://github.com/dnlmartinez/DMGExtensionsTools.git", :tag => "#{spec.version}" }

  spec.source_files  = "DMGExtensionsTools", "DMGExtensionsTools/**/*.{swift}"

  spec.exclude_files = "DMGExtensionsTools/Exclude"

  spec.dependency 'SwiftyUserDefaults'


end
