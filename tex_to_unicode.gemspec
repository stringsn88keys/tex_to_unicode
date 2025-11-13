Gem::Specification.new do |spec|
  spec.name          = 'tex_to_unicode'
  spec.version       = '0.1.0'
  spec.authors       = ['Your Name']
  spec.email         = ['your.email@example.com']

  spec.summary       = 'Convert TeX math symbols to Unicode approximations'
  spec.description   = 'A Ruby gem that converts TeX mathematical and other symbols to their Unicode character equivalents, enabling easier display of mathematical notation in plain text.'
  spec.homepage      = 'https://github.com/yourusername/tex_to_unicode'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.6.0'

  spec.files         = Dir['lib/**/*', 'bin/*', 'LICENSE', 'README.md']
  spec.executables   = ['tex_to_unicode']
  spec.require_paths = ['lib']

  spec.metadata = {
    'source_code_uri' => 'https://github.com/yourusername/tex_to_unicode',
    'bug_tracker_uri' => 'https://github.com/yourusername/tex_to_unicode/issues'
  }
end
