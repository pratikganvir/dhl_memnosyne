Gem::Specification.new do |spec|
  spec.name        = 'dhl_memnosyne'
  spec.version     = '0.0.0'
  spec.date        = '2013-03-28'
  spec.summary     = "Gem for DHL api."
  spec.description = "Track DHL shipment."
  spec.authors     = ["Pratik Ganvir"]
  spec.email       = 'pratikganvir@yahoo.in'
  spec.files       = ["lib/dhl_memnosyne.rb","lib/dhl_memnosyne/credentials/credentials.rb", "lib/dhl_memnosyne/web_interface/dhl_call.rb", "lib/tasks/rakefile.rb","lib/tasks/dhl_config.yml"]
  spec.add_dependency('nokogiri', '>= 1.5.2')
  spec.add_dependency('rake', '>= 0.9')
  spec.homepage    = 'http://rubygems.org/gems/dhl_memnosyne'
end
