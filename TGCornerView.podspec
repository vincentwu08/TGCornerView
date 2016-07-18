Pod::Spec.new do |s|
  s.name         = "TGCornerView"
  s.version      = "0.0.1"
  s.summary      = "Custom CornerView"
  s.description  = <<-DESC
                   Custom CornerView.
                   DESC

  s.homepage     = "https://github.com/vincentwu08/TGCornerView.git"
  s.license      = "MIT"
  s.author             = { "vincentwu08" => "vincentwu08@gmail.com" }
  s.social_media_url   = "http://twitter.com/tison_wu"
  s.source       = { :git => "https://github.com/vincentwu08/TGCornerView.git", :tag => "0.0.1"}
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files  = "TGCornerView/TGCornerView/*"

end
