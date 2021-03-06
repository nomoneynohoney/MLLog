## MLLog

An Objective-C NSLog replacement for presenting a resizable log window on device or simulator, may easily monitor runtime varibles on multiple devices without connect to Xcode.

Objective-C NSLog的替代品, 並且可以在執行時期顯示Log視窗, 方便多機測試時使用.

![DEMO GIF](http://i.makeagif.com/media/12-27-2016/o1scnq.gif)


## Features

- Easy to plug in.
- Easy to disable it.
- Movable and Resizable, won't block any UI component.


## Supported Language

Objective C

## Requirements

iOS 8.0 and above.


## Installation

```ruby
platform :ios, '8.0'

target 'TargetName' do
  pod 'MLLog', '~> 1.1.2'
end
```

## How To Use It

At first you have to import the MLLog.h header file, and add one line "EnableMLLog();" in the -application: didFinishLaunchingWithOptions:, it will enable the "On Screen Log Window" globally, no matter which view controller you are. Then use MLLog as you used to use NSLog.

```objective-c
#import <MLLog.h>

...

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    EnableMLLog();
    
    return YES;
}

...

-(void)anyOtherMethod{
    MLLog(@"There are %d apples and %f bananas.", 3, 5.8);
}

```


## Disable It

Just remark the line "EnableMLLog();". MLLog will act like NSLog. You don't have to change back any line from MLLog to NSLog.


## License

MLLog is released under the MIT license. See LICENSE for details.
