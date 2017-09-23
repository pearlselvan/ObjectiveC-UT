# Define a global platform for your project
platform :ios, '9.0'
inhibit_all_warnings!

# Ensure we do not modify Xcode targets. 
#install! 'cocoapods', :integrate_targets => false

source 'ssh://git@code.citrite.net/xmios/citrix-cocoapods.git'
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/Artsy/Specs.git'

# workspace 'ObjectiveCLearn.xcworkspace'



target 'ObjectiveCLearn' do
	use_frameworks!
	pod 'OCMock', '~> 3.4'
	
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    puts target.name
  end
end


