# Flutter Rowan University Dino Park

A Flutter-based mobile application showcasing the Rowan University Fossil Park, developed for the Topics in Mobile Programming I class.

## Features

- Interactive guide to fossils and non-fossils found at Rowan University Fossil Park
- Categories: Invertebrates, Vertebrates, and Non-Fossils
- Detailed information and images for each specimen
- Built-in webview to access the official RU Fossil Park website
- Responsive design for various screen sizes
- Custom splash screen

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Android Studio or VS Code with Flutter extensions

### Installing

1. Clone the repository:

```
git clone https://github.com/crivar96/Flutter-RU-Dino-Park.git
```

2. Navigate to the project directory:

```
cd Flutter-RU-Dino-Park
```

3. Install dependencies:

```
flutter pub get
```

4. Run the app:

```
flutter run
```

## App Structure

- `main.dart`: Entry point of the application, sets up the splash screen
- `aftersplash.dart`: Initializes the main app after the splash screen
- `homepage.dart`: Main menu and navigation hub
- `invertebrates.dart`: List and details of invertebrate fossils
- `vertebrates.dart`: List and details of vertebrate fossils
- `nonfossils.dart`: List and details of non-fossil specimens
- `fossilpark.dart`: WebView for the official RU Fossil Park website

## Features in Detail

1. **Splash Screen**: Displays app information and developer credits for 5 seconds on startup.

2. **Home Page**: 
- RU logo (tappable to open Fossil Park website)
- Navigation buttons for different fossil categories
- "About RU Fossil Park" button

3. **Fossil Categories**:
- Invertebrates
- Vertebrates
- Non-Fossils

4. **Specimen Information**:
- Tapping on a specimen opens a detailed view
- Includes specimen name, description, and image

5. **RU Fossil Park Website**: 
- Accessible via WebView
- Provides additional information about the park

## Customization

- Modify `assets` folder to update images
- Adjust color scheme in `homepage.dart` (main colors defined as `homeTextColor` and `backgroundColor`)
- Update fossil information in respective category files (`invertebrates.dart`, `vertebrates.dart`, `nonfossils.dart`)

## Dependencies

- `flutter`: The main framework for building the app
- `easy_splash_screen`: For creating the splash screen
- `flutter_webview_plugin`: For embedding the RU Fossil Park website

## Author

Jonathan Crivaro

## Last Updated

April 22, 2024
