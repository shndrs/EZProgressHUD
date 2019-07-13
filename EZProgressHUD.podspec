
Pod::Spec.new do |spec|

  spec.name         = "EZProgressHUD"
  spec.version      = "1.5.1"
  spec.summary      = "A very cool and easy to use activity indicator for iOS Application ;) Hope you fellas enjoy it 😊😊"

  spec.description  = <<-DESC
As we said, this is a very cool and easy to use activity indicator for iOS and guess what!!?? Android Application(coming soon...)
hope you guys enjoy it. -shndrs -hnk
                   DESC

  spec.homepage     = "https://github.com/shndrs/EZProgressHUD"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "shndrs" => "sahandraeisi1994@gmail.com" }

  spec.ios.deployment_target = "9.3"
  spec.swift_version = "5"


  spec.source       = { :git => "https://github.com/shndrs/EZProgressHUD.git", :tag => "#{spec.version}" }

  spec.source_files = "EZProgressHUD/**/*.{h,m,swift}"
  spec.exclude_files = "Classes/Exclude"

end
