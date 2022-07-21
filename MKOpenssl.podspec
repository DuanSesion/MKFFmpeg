 



Pod::Spec.new do |s|
  s.name         = "MKOpenssl"
  s.version      = "0.0.1"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/chrisballinger/FFmpeg-iOS"
  
  s.license      = { :type => 'LGPL', :file => 'LICENSE' }
  s.author       = { "Chris Ballinger" => "chris@chatsecure.org" } # Podspec maintainer
  s.requires_arc = true
  
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/chrisballinger/FFmpeg-iOS.git", :tag => "2.8.3", :submodules => true }

 
  s.swift_version = '5.0'
 
  

 
   s.source_files        = ['openssl/include/**/*.h']
   s.public_header_files = ['openssl/include/**/*.h']
   s.header_mappings_dir = 'openssl/include'
   s.vendored_libraries  = ['openssl/lib/*.a']
   s.libraries = 'avcodec', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
   s.frameworks   = ['CoreMedia', 'VideoToolBox', 'AudioToolBox']
    
 

end

