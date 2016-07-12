# GNLog

[![CI Status](http://img.shields.io/travis/games-neox/GNLog.svg?style=flat)](https://travis-ci.org/games-neox/GNLog)
[![Version](https://img.shields.io/cocoapods/v/GNLog.svg?style=flat)](http://cocoapods.org/pods/GNLog)
[![License](https://img.shields.io/cocoapods/l/GNLog.svg?style=flat)](http://cocoapods.org/pods/GNLog)
[![Platform](https://img.shields.io/cocoapods/p/GNLog.svg?style=flat)](http://cocoapods.org/pods/GNLog)

Logging utility for Objective-C/Swift with support of log levels.
Log levels visible in `release` builds: `INFO`, `WARN`, `ERROR`  
Log levels visible in `debug` builds: `VERBOSE`, `DEBUG`, `INFO`, `WARN`, `ERROR`  

`C`-like macros: `LOG_PRINT_*` & `LOG_WRITE_*`, e.g.:  
`LOG_PRINT_VERBOSE(@"LOG_TAG", @"TEXT FORMAT:%@", @"TEXT PARAMETER")`  
`LOG_WRITE_DEBUG(@"LOG_TAG", @"TEXT")`  

`Swift`-dedicated functions: `logWrite*`, e.g.:  
`logWriteInfo("LOG_TAG", "TEXT")`  
`logWriteWarn("LOG_TAG", "TEXT FORMAT:\("TEXT FORMAT")")`  

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Minimum supported `iOS` version: `8.x`

## Installation

GNLog is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "GNLog"
```

## Author

Games Neox, games.neox@gmail.com

## License

GNLog is available under the MIT license. See the LICENSE file for more info.
