# NutriKid App

A nutrition tracking application for children built with Flutter.

## Table of Contents
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Environment Setup](#environment-setup)
- [Development](#development)
  - [Running the App](#running-the-app)
  - [Testing](#testing)
  - [Building](#building)
- [Architecture](#architecture)

## Features

- Child nutrition tracking
- Growth monitoring
- Meal planning
- Nutritional analysis
- Team collaboration for healthcare professionals

## Tech Stack

- [Flutter](https://flutter.dev/) - Cross-platform mobile development framework
- [Dart](https://dart.dev/) - Programming language
- [Flutter Modular](https://github.com/Flutterando/modular) - Modularization and dependency injection
- [Flutter Bloc](https://bloclibrary.dev/) - State management
- [Dio](https://pub.dev/packages/dio) - HTTP client
- [Freezed](https://pub.dev/packages/freezed) - Code generation for data classes
- [Google Fonts](https://pub.dev/packages/google_fonts) - Custom fonts
- [Shared Preferences](https://pub.dev/packages/shared_preferences) - Local data storage
- [Syncfusion Charts](https://pub.dev/packages/syncfusion_flutter_charts) - Data visualization

## Project Structure

```
lib/
├── blocs/          # Business logic components
├── components/     # Reusable UI components
├── entities/       # Data models
├── gen/            # Generated files
├── model/          # Application models
├── modules/        # Feature modules
├── screens/        # UI screens
├── services/       # API services
├── shared/         # Shared utilities and configurations
└── utils/          # Utility functions
```

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (version 3.7.0 or higher)
- [Dart SDK](https://dart.dev/get-dart) (comes with Flutter)
- [Android Studio](https://developer.android.com/studio) or [Xcode](https://developer.apple.com/xcode/) for mobile development

### Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd nutrikid_app
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

### Environment Setup

1. Copy the `.env.example` file to `.env`:
   ```bash
   cp .env.example .env
   ```

2. Update the values in `.env` as needed:
   ```
   APP_KEY=your_app_key
   APP_NAME=NutriKid
   APP_DESCRIPTION=Child Nutrition Tracking App
   APP_BASE_URL=http://localhost:3000/api
   ```

## Development

### Running the App

```bash
flutter run
```

For development with hot reload:
```bash
flutter run --hot
```

### Testing

Run the tests with:
```bash
flutter test
```

### Building

Generate necessary files:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

Build for Android:
```bash
flutter build apk
```

Build for iOS:
```bash
flutter build ios
```

## Architecture

This project follows a modular architecture using Flutter Modular for dependency injection and routing. The state management is handled by Flutter Bloc, which helps separate business logic from UI components.

Key architectural patterns:
- **Modular Structure**: Each feature is organized in its own module
- **State Management**: Using BLoC pattern with flutter_bloc
- **Dependency Injection**: Using Flutter Modular's injector system
- **Data Models**: Using Freezed for immutable data models
- **API Integration**: Using Dio for HTTP requests
- **Routing**: Declarative routing with Flutter Modular
