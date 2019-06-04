
# react-native-bcrypt

## Getting started

`$ npm install react-native-bcrypt --save`

### Mostly automatic installation

`$ react-native link react-native-bcrypt`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-bcrypt` and add `RNBcrypt.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNBcrypt.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNBcryptPackage;` to the imports at the top of the file
  - Add `new RNBcryptPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-bcrypt'
  	project(':react-native-bcrypt').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-bcrypt/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-bcrypt')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNBcrypt.sln` in `node_modules/react-native-bcrypt/windows/RNBcrypt.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Bcrypt.RNBcrypt;` to the usings at the top of the file
  - Add `new RNBcryptPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNBcrypt from 'react-native-bcrypt';

// TODO: What to do with the module?
RNBcrypt;
```
  