# {{cookiecutter.app_name}}

Supports: iOS 9.x and above

## Branches:

    * master - stable app releases
    * develop - development branch, merge your feature branches here

## Dependencies:

    All dependencies are provided using CocoaPods. If for some reason dependency can't be added as pod, it will be in Library folder as source files.

    To install the dependencies run:
    ```
    pod install
    ```

### Core Dependencies

    TODO

## App architecture:

    MVVM

# Project structure:

    * Resources - fonts, strings, images etc.
    * SupportingFiles - configuration plist files
    * Models - model objects
    * Modules - contains app modules (UI + Code)
    * Helpers - protocols, extension and utility classes
