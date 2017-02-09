# HTML Number Decoder

This gem is solely focused on decoding HTML Numbers in the form of `&#32;`.

You can see a full table of HTML Numbers here: http://www.ascii.cl/htmlcodes.htm

## Installation

```
gem install html_number_decoder
```

## Usage

```ruby
require "html_number_decoder"

string = "how&#39;s it going pal&#63;"
HtmlNumberDecoder.decode(string) #=> "how's it going pal?"
```
