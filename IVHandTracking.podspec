#
# Be sure to run `pod lib lint IVPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IVHandTracking'
  s.version          = '1.0.0'
  s.summary          = 'Interactive video gesture recognition component'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  gesture recognition tool
                       DESC

  s.homepage         = 'https://github.com/ctrlvideo/IVHandTracking'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'guodi1014' => '913252651@qq.com' }
  s.source           = { :git => 'https://github.com/ctrlvideo/IVHandTracking.git', :tag => s.version }

  s.ios.deployment_target = '11.0'
  s.vendored_frameworks = 'IVHandTracking.framework'
  
  s.frameworks = 'AVFoundation','CoreGraphics','QuartzCore','CoreMedia','CoreImage','CoreVideo'
  s.requires_arc = 'true'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC'}
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
