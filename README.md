# Tracker APP

An app designed on Flutter that I'm building to solve a problem we have in our Track and Field team: how to save our performance for both training and competition and in a later version, who will be attending a particular competition to help the coaches have a clear view on that. All of that designed to have a better experience than using an Excel Sheet.

Clone the repo `git@github.com:gryanab/tracker-app.git`.

# Table of contents

- [Install Flutter](#install-flutter)
- [Simulators](#simulators)
  - [iOs Simulator](#iOs-simulator)
  - [Android Simulator](#android-simulator)
- [Extensions](#extensions)
- [Technical Choices](#technical-choices)
- [Run](#run)

# Install Flutter

In order to run the app, you need to have Flutter installed on your machine. You can find the instructions to do so following this link [Flutter](https://flutter.dev/get-started/).

# Simulators

In order to simulate the app and see how it renders, you wil need to either have a simulator installed on your machine or to have a real phone connected to your machine.

## iOs Simulator

Download [XCode](https://apps.apple.com/fr/app/xcode/id497799835?mt=12) or directly from the Apple Store.

## Android Simulator

Downlod [Android Studio](https://developer.android.com/studio).

# Extensions

Depending on your IDE, you will want to add extensions to facilitate your navigation in the code and running your app. `Flutter` and `Dart` are a minimum.

# Technical choices

Nothing is set in stone but it will be based on having one file per screen.

- `lib` holds the main source code. Folders are meant to follow user's experience as they navigate through the incoming app.
  - Each page has its own folder
  - Components have their own folders and bound to be reused.
- `pubscpec.yaml` holds dependencies.

A state management library is also going to be used and I'm thinking about [Provider](https://pub.dev/packages/provider).
No error management is set yet, nor testing files.

All of that is coming ASAP.

# Run

To run the app, after cloning the repo.

Run the following command:

```
flutter get pub
```

Start a simulator. For starting an iOs simulator you can follow `XCode` -> `Open developper tool` -> `Simulator`.

Finally run the command:

```
flutter run
```

The simulator should be recognised automatically.
