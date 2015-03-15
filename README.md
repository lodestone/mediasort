# mediasort

Tidy up directories containing media of varying types (video, image)

## More Details:

I wrote this script to move a directory full of photos just imported from SD card or camera
and sort them into subdirectories based on their creation time. So if the photo, named
DSC0001.JPG was taken on March 14th, 2015, the script would sort it into a directory like:

`2015/03/2015-03-14/DSC0001.JPG`
*`<YEAR>/<MONTH>/<FULL-DATE>/<FILENAME>`*

### Installation:

*This script requires exiftool but has no other dependencies besides standard libraries.*

Use brew to install exiftool:

    brew install exiftool

Install the gem:

    gem install mediasort
    

### Usage:

#### *Required Arguments*

     mediasort \
      --input <directory containing files to be moved> \
      --output <directory to move files> \
      --mimetype <image|video> \

#### *Optional Arguments*

      --no-progress # don't display an indicator of progress
      --verbose # show the commands being executed


## Contributing to mediasort

* Send me a pull request.

### Copyright

Copyright (c) 2015 Matt Petty (<https://twitter.com/lodestone>).  
See LICENSE.txt for further details.
