# ESPPlaceholderTextView
======================

[![Version](http://cocoapod-badges.herokuapp.com/v/ESPPlaceholderTextView/badge.png)](http://cocoadocs.org/docsets/ESPPlaceholderTextView)
[![Platform](http://cocoapod-badges.herokuapp.com/p/ESPPlaceholderTextView/badge.png)](http://cocoadocs.org/docsets/ESPPlaceholderTextView)

UITextView replacement that allows developers to add Placeholder behavior to TextViews without a single line of code:


## Installation

ESPPlaceholderTextView is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

    pod "ESPPlaceholderTextView"

## Using

###[How use ESPPlaceholderTextView with Storyboard (Youtube Video)](https://www.youtube.com/watch?v=HLOBhqwjdQ8)

<object width="480" height="385"><param name="movie" value="http://www.youtube.com/v/HLOBhqwjdQ8&amp;hl=en_US&amp;fs=1"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/HLOBhqwjdQ8&amp;hl=en_US&amp;fs=1" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="480" height="385"></embed></object>

### How to Use ESPPlaceholderTextView in your code

Import Classes
```objc
#import <ESPPlaceholderTextView/ESPPlaceholderTextView.h>
#import <ESPPlaceholderTextView/ESPPlaceholderControl.h>
```

Create ESPPlaceholderTextView instance
```objc
self.textView = [[ESPPlaceholderTextView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 200.0)];
self.textView.placeholder = @"Placeholder";
self.textView.placeholderColor = [UIColor lightGrayColor];
```

Create ESPPlaceholderControl instance
```objc
ESPPlaceholderControl *control = [[ESPPlaceholderControl alloc] init];
```

Connect both objects
```objc
control.owner = self.textView;
self.textView.delegate = control;
```

#### BONUS FEATURE
If you need (as always) to delegate UITextViewDelegate's methods for another object, you can assign this object to ESPPlaceholderControl targets.
```objc
control.targets = @[self];
```

They will work without any interference
