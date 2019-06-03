Pod::Spec.new do |s|
  s.name         = "TGCornerView"
  s.version      = "1.0.0"
  s.summary      = "Custom CornerView"
  s.description  = <<-DESC
                   Custom CornerView.
                   DESC

  s.homepage     = "https://github.com/vincentwu08/TGCornerView.git"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "vincentwu08" => "vincentwu08@gmail.com" }
  s.social_media_url   = "https://github.com/vincentwu08"
  s.source       = { :git => "https://github.com/vincentwu08/TGCornerView.git", :tag => s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files  = "TGCornerViewDemo/TGCornerView/TGCornerView/*.{h,m}"

  s.dependency "Masonry"

end
