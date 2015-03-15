# mediasort

Tidy up directories containing media of varying types (video, image)

## More Details:

I wrote this script to move a directory full of photos just imported from SD card or camera
and sort them into subdirectories based on their creation time. So if the photo, named
DSC0001.JPG was taken on March 14th, 2015, the script would sort it into a directory like:

`2015/03/2015-03-14/DSC0001.JPG`
*`<YEAR>/<MONTH>/<FULL-DATE>/<FILENAME>`*

### Usage

#### *Required Arguments*

     mediasort \
      --input <directory containing files to be moved> \
      --output <directory to move files> \
      --mimetype <image|video> \

#### *Optional Arguments*

      --no-progress # don't display an indicator of progress
      --verbose # show the commands being executed


## Contributing to mediasort

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

### Copyright

Copyright (c) 2015 Matt Petty (<https://twitter.com/lodestone>).  
See LICENSE.txt for further details.
