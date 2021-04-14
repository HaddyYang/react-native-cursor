
# react-native-cursor

## Getting started

`$ npm install react-native-cursor --save`

### Mostly automatic installation

`$ react-native link react-native-cursor`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-cursor` and add `RNCursor.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNCursor.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNCursorPackage;` to the imports at the top of the file
  - Add `new RNCursorPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-cursor'
  	project(':react-native-cursor').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-cursor/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-cursor')
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
  