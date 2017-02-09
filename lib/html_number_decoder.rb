require "html_number_decoder/mapping"

class HtmlNumberDecoder
  PATTERN = /(&#(\d+);)/

  def self.decode(string)
    next_index = string.index(PATTERN)
    return string if next_index.nil?

    string[0..(next_index - 1)] +
      convert($1) +
      decode(string[(next_index + $1.length)..-1])
  end

  def convert(html_number)
    number = html_number[/\d+/]
    MAPPING[number]
  end
end
