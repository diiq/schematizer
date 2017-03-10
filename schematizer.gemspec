Gem::Specification.new do |s|
  s.name        = 'schematizer'
  s.version     = '0.0.2'
  s.date        = '2017-02-24'
  s.summary     = "Converts yaml to schema.rb"
  s.description = "For rapid prototyping in rails"
  s.authors     = ["Sam Bleckley"]
  s.email       = 'sam@mutuallyhuman.com'
  s.executables = "schematizer"
  s.files       = ["templates/main.rb.erb"]
  s.homepage    = 'http://rubygems.org/gems/schematizer'
  s.license     = 'MIT'
  s.add_runtime_dependency 'activesupport', '~> 5'
end
