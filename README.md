

# NY Times Most Popular Articles
Popular news fees for NYTimes 

## Demo for displaying News from NY Times

https://developer.nytimes.com/

## Demonstrations

Covers the following:
* Object Oriented Programming Approach 
* Unit Tests 
* Generic and simple code 
* Leverage today's best coding practices ([See Disclaimer](#disclaimer))

App Features:
* Supports Split View (Landscape orientation)
* Auto layout with Dynamic Cell Resizing
* Supports API Pagination 
* Dynamic Time Period Configuration 
* Dynamic Section Configuration 

## Environment
Xcode 11.3.1
Swift 4.2


## Design Pattern

Model-View-ViewModel (MVVM) is a structural design pattern that separates objects into three distinct groups:

Models hold application data. They’re usually structs or simple classes.
Views display visual elements and controls on the screen. They’re typically subclasses of UIView.
View models transform model information into values that can be displayed on a view. They’re usually classes, so they can be passed around as references.


Does this pattern sound familiar? Yep, it’s very similar to Model-View-Controller (MVC). Note that the class diagram at the top of this page includes a view controller; view controllers do exist in MVVM, but their role is minimized.

## Build

To build using xcodebuild without code signing
```
xcodebuild clean build -workspace "NYTimes_MPA.xcworkspace" -scheme "NYTimes_MPA" CODE_SIGNING_ALLOWED=NO
```


## Tests

To run tests using xcodebuild.
```
xcodebuild -workspace "NYTimes_MPA.xcworkspace" -scheme "NYTimes_MPA" -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 11 Plus,OS=13.2' test
```


## LICENSE
---
<details>
<summary>MIT License.</summary>
Distributed under MIT License.

Copyright 2020 Emad Al Nawaisheh
</details>


## Author
---
#### If you wish to contact me

linkedin:  https://www.linkedin.com/in/eng-emad-nawisha/

Email : emadn1988@gmail.com

