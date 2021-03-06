Pod::Spec.new do |s|

  s.name         = "GEOSwift"
  s.version      = "0.2"
  s.summary      = "The Swift Geographic Engine."

  s.description  = <<-DESC
Easily handle a geographical object model (points, linestrings, polygons etc.) and related topographical operations (intersections, overlapping etc.). 
A type-safe, MIT-licensed Swift interface to the OSGeo's GEOS library routines, nicely integrated with MapKit and Quicklook.
DESC

  s.homepage     = "https://github.com/andreacremaschi/GEOSwift"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Andrea Cremaschi" => "andreacremaschi@libero.it" }
  s.social_media_url   = "http://twitter.com/andreacremaschi"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/andreacremaschi/GEOSwift.git", :tag => "0.2" }
  
  s.subspec 'Core' do |cs|
    cs.source_files = "GEOSwift/*"
    cs.dependency "geos", "~> 3.4.2"
  end

  s.subspec 'MapboxGL' do |cs|
    cs.source_files = "GEOSwift/MapboxGL"
    cs.dependency "GEOSwift/Core"
    cs.dependency "MapboxGL"
  end

  s.default_subspec = 'Core'

end
