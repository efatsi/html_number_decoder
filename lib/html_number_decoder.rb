require "html_number_decoder/mapping"

module HtmlNumberDecoder
  PATTERN = /(&#(\d+);)/

  def self.decode(string)
    return unless string.is_a? String

    next_index = string.index(PATTERN)
    return string if next_index.nil?

    string[0..(next_index - 1)] +
      convert($1) +
      decode(string[(next_index + $1.length)..-1])
  end

  def self.convert(html_number)
    number = html_number[/\d+/]
    MAPPING[number] || ""
  end
end
