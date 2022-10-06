Pod::Spec.new do |s|
  s.name = 'TerminalAPIKit'
  s.version = '1.2.0'
  s.summary = "Adyen Terminal API for iOS"
  s.description = <<-DESC
    TerminalAPIKit for iOS helps with integrating Adyen's Terminal API into your iOS POS app.
  DESC
  s.homepage = 'https://adyen.com'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Adyen' => 'support@adyen.com' }
  s.source = { :git => 'https://github.com/Adyen/adyen-terminal-api-ios', :tag => "#{s.version}" }
  s.platform = :ios
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.6'
  s.frameworks = 'Foundation'
  s.source_files = 'Sources/TerminalAPIKit/**/*.swift'
end