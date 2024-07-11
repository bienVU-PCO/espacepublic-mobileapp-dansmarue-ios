platform :ios, '12.0'
source 'https://github.com/CocoaPods/Specs.git'
# source 'https://forge.adtag.eu/pub/Specs'

target 'bienVU' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for bienVU
  pod 'GoogleMaps', '6.2.1'
  pod 'GooglePlaces', '6.2.1'
  pod 'SwiftyJSON', '5.0.1'
  pod 'Fabric', '1.10.2'
  pod 'Crashlytics', '3.14.0'
  pod 'SDWebImage', '5.18.7'
  pod 'TTGSnackbar', '1.11.1'
  pod 'Firebase/Crashlytics', '10.19.0'
  pod 'Firebase/Analytics', '10.19.0'
  # pod 'Mapbox-iOS-SDK', '~> 6.3.0'
  # pod 'AdtagLocationDetection', '3.1.7'

  target 'bienVUTests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer|
  installer.generated_projects.each do |project|
      project.targets.each do |target|
          target.build_configurations.each do |config|
              config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
          end
      end
  end
end
