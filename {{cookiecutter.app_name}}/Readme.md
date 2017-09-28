# {{cookiecutter.app_name}}

Supports: iOS 9.x and above

## Branches:

* master - stable app releases
* develop - development branch, merge your feature branches here

## Dependencies:

The project is using cocoapods for managing external libraries and a Gemfile for managing the cocoapods version.

Get Bundler

```
sudo gem install bundler
```

To install the specific cocoapods version run

```
bundle install
```

Then install the pods

```
bundle exec pod install
```

### Core Dependencies

* Fabric
* Crashlytics
* Device
* Kingfisher
* SwiftDate
* RxSwift
* RxAlamofire
* RSTUtils
* SwiftyJSON

## App architecture:

Model-View-ViewModel(MVVM)

![MVVM](http://i.imgur.com/gGvGSCa.png)

## Project structure:

* Resources - fonts, strings, images etc.
* SupportingFiles - configuration plist files
* Models - model objects
* Modules - contains app modules (UI + Code)
* Helpers - protocols, extension and utility classes
