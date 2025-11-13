#!/usr/bin/env ruby

# Script to bump version in gemspec file
# Usage: bump_version.rb [major|minor|patch]

bump_type = ARGV[0] || 'patch'

unless %w[major minor patch].include?(bump_type)
  STDERR.puts "Invalid bump type: #{bump_type}"
  STDERR.puts "Usage: bump_version.rb [major|minor|patch]"
  exit 1
end

gemspec_file = 'tex_to_unicode.gemspec'

unless File.exist?(gemspec_file)
  STDERR.puts "Error: #{gemspec_file} not found"
  exit 1
end

# Read the gemspec file
content = File.read(gemspec_file)

# Find the current version
version_match = content.match(/spec\.version\s*=\s*['"](\d+)\.(\d+)\.(\d+)['"]/)

unless version_match
  STDERR.puts "Error: Could not find version in #{gemspec_file}"
  exit 1
end

major, minor, patch = version_match[1..3].map(&:to_i)

# Bump the version according to the type
case bump_type
when 'major'
  major += 1
  minor = 0
  patch = 0
when 'minor'
  minor += 1
  patch = 0
when 'patch'
  patch += 1
end

new_version = "#{major}.#{minor}.#{patch}"

# Replace the version in the file
new_content = content.sub(
  /spec\.version\s*=\s*['"]#{Regexp.escape(version_match[1])}\.#{Regexp.escape(version_match[2])}\.#{Regexp.escape(version_match[3])}['"]/,
  "spec.version       = '#{new_version}'"
)

# Write the updated content back to the file
File.write(gemspec_file, new_content)

# Output the new version (this will be captured by the GitHub Action)
puts new_version
