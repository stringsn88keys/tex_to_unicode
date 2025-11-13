require_relative 'tex_to_unicode/converter'

module TexToUnicode
  VERSION = '0.1.0'

  def self.convert(text)
    Converter.convert(text)
  end
end
