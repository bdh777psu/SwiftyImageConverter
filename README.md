# SwiftyImageConverter
A simple image file to JPEG or PNG data representation conversion utility in Swift.


## Description
This Swift Package was designed to be a simple utility tool to convert image files to their JPEG or PNG data format equivalents.


## Installation
SwiftyImageConverter is available as a Swift Package. To install
it, simply add the following line to your 'Package.swift' file:

```ruby
.package(url: "https://github.com/bdh777psu/SwiftyImageConverter", branch: "main"),
```

...or drag the 'SwiftyImageConverter.swift' file into your project.


## Usage Example
```ruby
import SwiftyImageConverter

let pathToFile = "/path/file.heic"
let pathToFile1 = "/path/file1.heic"

let pathToFiles = [pathToFile, pathToFile1]

let sicUtil = SwiftImageFileConverter()

let compressedJPEGs: [Data] = sicUtil.convertImageFilesToJpeg(filesPaths: pathToFiles, compression: .maximum)
let compressedPNGs: [Data] = sicUtil.convertImageFilesToJpeg(filesPaths: pathToFiles)
```

## Available Compression levels
```ruby
/// The quality of the resulting JPEG image, expressed as a value from 0.0 to 1.0. The value 0.0 represents the maximum compression (or lowest quality) while the value 1.0 represents the least compression (or best quality).

    .maximum
    .high
    .medium
    .low
    .least
```

## Author
Diogo Lessa


## License
SwiftyImageConverter is available under the MIT license. 
