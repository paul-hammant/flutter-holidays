# holidays

A single page application for displaying counties and holidays in these countries.the app uses [country API](https://api.printful.com/countries) to get all countries name and countries codes then the app will pass the selected country code to [Holiday API](https://www.calendarindex.com/api/v1/holidays) to get all holidays for selected country.

## Project run
For runing this project you must have flutter installed in your mahcine.
## Flutter installation
+ **Windows** folow this [guid](https://flutter.io/docs/get-started/install/windows)
+ **macOS** folow this [guid](https://flutter.io/docs/get-started/install/macos)
+ **Linux** folow this [guid](https://flutter.io/docs/get-started/install/linux)

## Project building for android tablet
to build this project do the following steps:
1. open it in your favorite IDE.
2. in terminal type `flutter packages get`.
3. make sure you have connected android tablet.
4. type ` flutter run ` to run it on the android tablet.

## Project building for Windows Desktop
to build this project do the following steps:
1. open it in your favorite IDE.
2. in terminal type `flutter packages get`.
3. in terminal type `flutter build bundle`.
4. Download [Windows template](https://github.com/marceloneppel/flutter-desktop-template/releases/download/1.1.0/flutter-desktop-template-darwin-x64.zip).
5. unzipe the template.
6. modifiy `config.json` by changing the value of the parameters according to the information of your environment and application. `FlutterPath`: directory of your Flutter installation. `FlutterProjectPath`: your project  directory. `IconPath`: path to the desktop application icon file. `ScreenHeight`: initial screen height of the desktop application. `ScreenWidth`: initial screen width of the desktop application. Use double backslashes (\\) instead of simple ones (\) in directory paths if you are using Windows.
7. run `flutter-desktop-template.exe`


## Project building for macOS
to build this project do the following steps:
1. open it in your favorite IDE.
2. in terminal type `flutter packages get`.
3. in terminal type `flutter build bundle`.
4. Download [macOS template](https://github.com/Drakirus/go-flutter-desktop-embedder/releases/download/v0.3.0-alpha/stocks-example-GoFlutter_OSX.zip).
5. unzipe the template.
6. modifiy `config.json` by changing the value of the parameters according to the information of your environment and application. `FlutterPath`: directory of your Flutter installation. `FlutterProjectPath`: your project  directory. `IconPath`: path to the desktop application icon file. `ScreenHeight`: initial screen height of the desktop application. `ScreenWidth`: initial screen width of the desktop application. Use double backslashes (\\) instead of simple ones (\) in directory paths if you are using Windows.
7. run `flutter-desktop-template` executable.

## Project building for Linux
to build this project do the following steps:
1. open it in your favorite IDE.
2. in terminal type `flutter packages get`.
3. in terminal type `flutter build bundle`.
4. Download [Linux template](https://github.com/Drakirus/go-flutter-desktop-embedder/releases/download/v0.3.0-alpha/stocks-example-GoFlutter_LINUX.zip).
5. unzipe the template.
6. modifiy `config.json` by changing the value of the parameters according to the information of your environment and application. `FlutterPath`: directory of your Flutter installation. `FlutterProjectPath`: your project  directory. `IconPath`: path to the desktop application icon file. `ScreenHeight`: initial screen height of the desktop application. `ScreenWidth`: initial screen width of the desktop application. Use double backslashes (\\) instead of simple ones (\) in directory paths if you are using Windows.
7. run `flutter-desktop-template` executable.







