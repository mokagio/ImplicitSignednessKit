Pod::Spec.new do |s|
  s.name         = "ImplicitSignednessKit"
  s.version      = "1.0.1"
  s.summary      = "A set of categories to make working with the \"Implicit Signedness Conversion\" warning easire"

  s.description  = <<-DESC
ImplicitSignednessKit, on top of having the most sad name ever seen in the world of open source libraries, is a tool for people that:

1. Like to use Xcode in the hard mode.
2. Don't want to have to manually type cast things things like `[array count]` or `indexPath.row`.
                   DESC

  s.homepage     = "https://github.com/mokagio/ImplicitSignednessKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author    = "Giovanni Lodi"
  s.social_media_url   = "http://twitter.com/mokagio"

  s.source       = { :git => "https://github.com/mokagio/ImplicitSignednessKit.git", :tag => s.version }

  s.source_files  = "ImplicitSignednessKit/**/*.{h,m}"

  s.platform      = :ios
  s.framework     = "UIKit"
end
