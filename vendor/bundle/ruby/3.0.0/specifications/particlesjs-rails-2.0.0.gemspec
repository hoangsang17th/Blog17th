# -*- encoding: utf-8 -*-
# stub: particlesjs-rails 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "particlesjs-rails".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Douglas Harrington Muhone".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-05-10"
  s.email = ["theeomm@outlook.com".freeze]
  s.homepage = "https://github.com/theeomm/particlesjs-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "A ruby on rails wrapper for particle.js".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end
