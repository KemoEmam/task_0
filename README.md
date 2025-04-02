# Flutter UI Task

This repository contains the Flutter implementation of a UI task featuring three screens: Home, Cart, and Burger Item views. The task was completed as part of a technical assessment.

## Live Demo
https://github.com/user-attachments/assets/106e7a76-7a5d-4bb6-9ac1-5e9d20d52e82

## Screens Implemented
1. **Home Screen**: Displays a list of burgers available for selection.
2. **Cart Screen**: Shows the items added to the cart with their details.
3. **Burger Item Screen**: Displays detailed information about a selected item.

## Tech Stack
- **Flutter** 
- **Dart**
- **SetState** for state management
- **Flutter Widgets & Material Design**

## Installation

Clone the repository:
```sh
git clone https://github.com/yourusername/flutter-ui-task.git
cd flutter-ui-task
```

Get dependencies:
```sh
flutter pub get
```

Run the app:
```sh
flutter run
```

## Folder Structure
```
lib/
│── main.dart
│── core/
│   ├── theme.dart
│   ├── constants.dart
│── domain/
│   ├── models/
│── presentation/
│   ├── home/
│   │   ├── home_screen.dart
│   │   ├── widgets/
│   ├── cart/
│   │   ├── cart_screen.dart
│   ├── burger_item/
│   │   ├── burger_item_screen.dart
│── widgets/
```

## Features Implemented
- **Responsive UI** for different screen sizes
- **Reusable Widgets** for consistency
- **SetState for State Management**
- **Smooth Navigation** between screens


## Notes
- The UI follows the provided design closely.
- Dummy data is used for now.
