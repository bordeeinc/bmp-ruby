# BMP

Bitmap generator (bitmap as in BMP image, not bitmap bitset)
  
[![Gem Version](https://badge.fury.io/rb/bmp-ruby.svg)](https://badge.fury.io/rb/bmp-ruby)

## Usage

```
require 'bmp'

# (soon)
```

## Installation

Command Line

```
gem install bmp-ruby
```

Gemfile

```
gem "bmp-ruby", "~>0.1"
```

## Development

(soon)

### BMP File Format

Adapted from: https://en.wikipedia.org/wiki/BMP_file_format

Attribute             |Hex Offset |Dec Offset |Size |Hex Value    |Value                  |Description
----------------------|-----------|-----------|-----|-------------|-----------------------|-----------
BMP Header            |           |           |     |             |                       |
signature             |0h         |0          |2    |42 4D        |"BM"                   |ID field (42h, 4Dh)
file_size             |2h         |2          |4    |9A 00 00 00  |154 bytes (122+32)     |Size of the BMP file
reserved_1            |6h         |6          |2    |00 00        |Unused                 |Application specific
reserved_2            |8h         |8          |2    |00 00        |Unused                 |Application specific
file_offset           |Ah         |10         |4    |7A 00 00 00  |122 bytes (14+108).    |Offset where the pixel array (bitmap data) can be found
DIB Header            |           |           |     |             |                       |
dib_header_size       |Eh         |14         |4    |6C 00 00 00  |108 bytes              |Number of bytes in the DIB header (from this point)
image_width           |12h        |18         |4    |04 00 00 00  |4 pixels               |(left to right order)   Width of the bitmap in pixels
image_height          |16h        |22         |4    |02 00 00 00  |2 pixels               |(bottom to top order)   Height of the bitmap in pixels
planes                |1Ah        |26         |2    |01 00        |1 plane                |Number of color planes being used
bits_per_pixel        |1Ch        |28         |2    |20 00        |32 bits                |Number of bits per pixel
compression           |1Eh        |30         |4    |03 00 00 00  |3                      |BI_BITFIELDS, no pixel array compression used
image_size            |22h        |34         |4    |20 00 00 00  |32 bytes               |Size of the raw bitmap data (including padding)
x_pixels_per_meter    |26h        |38         |4    |13 0B 00 00  |2835 px/meter horiz.   |Print resolution of the image, 72 DPI × 39.3701 inches per meter yields 2834.6472
y_pixels_per_meter    |2Ah        |42         |4    |13 0B 00 00  |2835 px/meter vertical |Print resolution of the image, 72 DPI × 39.3701 inches per meter yields 2834.6472
number_of_colors      |2Eh        |46         |4    |00 00 00 00  |0 colors               |Number of colors in the palette
important_colors      |32h        |50         |4    |00 00 00 00  |0 important colors     |0 means all colors are important
red_channel_bitmask   |36h        |54         |4    |00 00 FF 00  |00FF0000 in big-endian |Red channel bit mask (valid because BI_BITFIELDS is specified)
green_channel_bitmask |3Ah        |58         |4    |00 FF 00 00  |0000FF00 in big-endian |Green channel bit mask (valid because BI_BITFIELDS is specified)
blue_channel_bitmask  |3Eh        |62         |4    |FF 00 00 00  |000000FF in big-endian |Blue channel bit mask (valid because BI_BITFIELDS is specified)
alpha_channel_bitmask |42h        |66         |4    |00 00 00 FF  |FF000000 in big-endian |Alpha channel bit mask
color_space_type      |46h        |70         |4    |20 6E 69 57  |little-endian "Win "   |LCS_WINDOWS_COLOR_SPACE
color_space_endpoints |4Ah        |74         |36   |00 00 00 00\n00 00 00 00\n00 00 00 00\n00 00 00 00\n00 00 00 00\n00 00 00 00\n00 00 00 00\n00 00 00 00|CIEXYZTRIPLE Color Space endpoints |Unused for LCS "Win " or "sRGB"
red_gamma             |6Eh        |110        |4    |00 00 00 00  |0 Red Gamma            |Unused for LCS "Win " or "sRGB"
green_gamma           |72h        |114        |4    |00 00 00 00  |0 Green Gamma          |Unused for LCS "Win " or "sRGB"
blue_gamma            |76h        |118        |4    |00 00 00 00  |0 Blue Gamma           |Unused for LCS "Win " or "sRGB"

### Dev Requirements

* [hoe](https://github.com/seattlerb/hoe) gem manager
* [hoe-bundler] may need `gem install hoe-bundler` installation before using `rake bundler:gemfile`
* [YARD](http://yardoc.org) docs
* [redcarpet](https://github.com/vmg/redcarpet) for yardoc

    [hoe-bundler]: https://github.com/flavorjones/hoe-bundler

### Testing

Tests written with [minitest]

```
rake test
```

  [minitest]: https://github.com/seattlerb/minitest

### Contributing

Send tested code.
Thank you, [contributors]!

  [contributors]: https://github.com/bordeeinc/bmp-ruby/graphs/contributors

### To Do

* (soon)

## License

MIT License

Copyright (c) 2017 Bordee Inc.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## About

![bordee](http://bordee.com/src/img/surf-with-bordee-github.png)

BMP is maintained and funded by Bordee Inc.
The names and logos for Bordee are trademarks of [Bordee Inc.][bordeeinc]

  [bordeeinc]: http://bordee.com

We love open source software!
See [our other projects][bordee-github]
and [check out Seattle.rb!][community]

  [bordee-github]: https://github.com/bordeeinc
  [community]: https://seattlerb.org
