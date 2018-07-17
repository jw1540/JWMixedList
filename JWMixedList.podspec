#
# Be sure to run `pod lib lint JWMixedList.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JWMixedList'
  s.version          = '0.1.0'
  s.summary          = 'A mechanism for having mixed data types in one collection view.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
UITableViews and UICollectionViews can be difficult to manage when you want multiple data types.
For example, a collection view that supports both text only cell types, and image only cell types.
JWMixedList allows you to have data agnostic list view controllers, and manager the data
on an item by item basis.
                       DESC

  s.homepage         = 'https://github.com/jw1540/JWMixedList'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jw1540' => 'joew795@gmail.com' }
  s.source           = { :git => 'https://github.com/jw1540/JWMixedList.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/seph_joe_'

  s.ios.deployment_target = '8.0'
  s.swift_version = '3.2'

  s.source_files = 'JWMixedList/**/*.swift'
  
  # s.resource_bundles = {
  #   'JWMixedList' => ['JWMixedList/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
