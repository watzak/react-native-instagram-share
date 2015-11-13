# react-native-instagram-share
react-native interface to share images and videos within instagram (iOS)


## Update
Instagram does not support the caption functionality anymore
=> http://developers.instagram.com/post/125972775561/removing-pre-filled-captions-from-mobile-sharing


## Getting started

1. `npm install react-native-instagram-share@latest --save`
2. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
3. Go to `node_modules` ➜ `react-native-instagram-share` and add `RNInstagramShare.xcodeproj`
4. In XCode, in the project navigator, select your project. Add `libRNInstagramShare.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
5. Click `RNInstagramShare.xcodeproj` in the project navigator and go the `Build Settings` tab. Make sure 'All' is toggled on (instead of 'Basic'). Look for `Header Search Paths` and make sure it contains both `$(SRCROOT)/../../react-native/React` and `$(SRCROOT)/../../../React` - mark both as `recursive`.
6. Run your project (`Cmd+R`)


## Usage

```javascript
var RNInstagramShare = require('NativeModules').RNInstagramShare;

var image = 'assets-library://asset/asset.JPG?id=C4E468CC-3B82-4822-8FEE-BA1C1DC47B4B&ext=JPG';
var video = 'assets-library://asset/asset.mov?id=4D8172B1-EE3A-43D7-97BF-951003BFE97A&ext=mov';
var caption = "Test Message";
RNInstagramShare.share(video, caption);
```

Can be easily used together with react-native-camera (https://github.com/lwansbrough/react-native-camera)


## Demo

![Alt Text](https://github.com/watzak/react-native-instagram-share/blob/master/demo.gif)
