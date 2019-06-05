
Pod::Spec.new do |s|
  s.name         = "RNBcrypt"
  s.version      = "1.0.0"
  s.summary      = "RNBcrypt"
  s.description  = "Native module for React Native that verifies a BCrypt hashed password"
  s.homepage     = "https://github.com/abouariu-clarisoft/RNBcrypt.git"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "andrei.bouariu@clarisoft.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/abouariu-clarisoft/RNBcrypt.git", :tag => "master" }
  s.source_files  = "RNBcrypt/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency "BCryptSwift", "~> 1.1"
  #s.dependency "others"

end
