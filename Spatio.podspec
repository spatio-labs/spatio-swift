Pod::Spec.new do |s|
  s.name = 'Spatio'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '11.0'
  s.watchos.deployment_target = '4.0'
  s.version = '0.0.2'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'vv1' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'Spatio Swift SDK'
  s.source_files = 'Spatio/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
end
