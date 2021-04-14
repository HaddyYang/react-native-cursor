
# react-native-cursor

## Getting started

`$ yarn add github:haddyyang/react-native-cursor`

### Mostly automatic installation

`$ react-native link react-native-cursor`

### Manual installation


#### Macos

```
cd macos

# open Podfile, add line
pod 'RNCursor', :path => '../node_modules/react-native-cursor'

# save, exit
pod install
```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNCursor.sln` in `node_modules/react-native-cursor/windows/RNCursor.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Cursor.RNCursor;` to the usings at the top of the file
  - Add `new RNCursorPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNCursor from 'react-native-cursor';

// TODO: What to do with the module?
RNCursor;
```
  