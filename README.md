# AlfredImageMontage

An extension for [Alfred](http://www.alfredapp.com/) to create a composite image by combining several separate images, tiling them horizontally or vertically (depending on their dimensions) and captioning each image with it's filename sans extension.

![Example](https://raw.github.com/phallstrom/AlfredImageMontage/master/example.png)

## Requirements

- [Imagemagick](http://www.imagemagick.org/). I'd recommend installing it via [homebrew](http://mxcl.github.com/homebrew/).
- The Alfred [Powerpack](http://www.alfredapp.com/powerpack/).

## Usage

1. Select two or more image files in Finder.
2. Invoke Alfred's [File Buffer](http://support.alfredapp.com/features:file-buffer) with `⌥⌘\`.
3. Type `montage` or select `Image Montage` from the list.
4. If all goes well, a new image will be created on your Desktop named something like `montage-1234.png`. 

## Help

Having a problem?  [Open an issue](https://github.com/phallstrom/AlfredImageMontage/issues) and I'll see what I can do.

## License:

(The MIT License)

Copyright (c) 2012 Philip Hallstrom

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
