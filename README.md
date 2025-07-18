# 🏠 Smart Home Management App

A comprehensive Flutter application for managing smart home devices and automation systems. This app provides an intuitive interface for controlling and monitoring your smart home ecosystem.

## ✨ Features

### 🎯 Core Functionality
- **Smart Device Management**: Add, configure, and control smart home devices
- **Multi-Language Support**: Internationalization for global users
- **Regional Settings**: Location-based customization and compliance
- **User Authentication**: Secure login and registration system
- **Settings Management**: Comprehensive app configuration options

### 🛠️ Technical Features
- **Cross-Platform**: Built with Flutter for iOS, Android, and Web
- **Modern UI/UX**: Clean, professional design with smooth animations
- **Permission Handling**: Secure access to device features
- **Network Integration**: Real-time device connectivity
- **Local Storage**: Persistent user preferences and settings
- **Environment Configuration**: Flexible deployment settings

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (>=3.3.1)
- Dart SDK
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/abdallahalzoghby/smarthome.git
   cd smarthome
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```
d
## 📁 Project Structure

```
lib/
├── main.dart                 # App entry point and routing
├── welcome/                  # Welcome and onboarding screens
│   ├── WelcomesScreen.dart
│   ├── home.dart
│   └── me.dart
├── menu/                     # Authentication and menu screens
│   ├── login.dart
│   ├── signin.dart
│   ├── setting.dart
│   ├── rate.dart
│   ├── terms_and_conditions.dart
│   ├── privacy_policy.dart
│   └── help_and_notes.dart
├── device/                   # Device management
│   └── add_device.dart
└── setting/                  # App settings and configuration
    ├── region.dart
    ├── language.dart
    └── smart_home_management.dart
```

## 🛠️ Dependencies

### Core Dependencies
- **flutter**: Core Flutter framework
- **url_launcher**: Launch external URLs and apps
- **animated_widgets**: Smooth UI animations
- **permission_handler**: Handle device permissions
- **shared_preferences**: Local data storage
- **network_info_plus**: Network information access
- **flutter_dotenv**: Environment variable management

### Development Dependencies
- **flutter_test**: Testing framework
- **flutter_launcher_icons**: App icon generation
- **flutter_lints**: Code quality and style enforcement

## 🔧 Configuration

### Environment Setup
Create a `.env` file in the root directory:
```env
# Add your environment variables here
API_BASE_URL=your_api_url
APP_NAME=Smart Home
```

### App Icons
The app uses custom icons generated from `assets/logo.png`. To regenerate icons:
```bash
flutter pub run flutter_launcher_icons
```

## 📋 Features Breakdown

### 🔐 Authentication System
- User registration and login
- Secure credential management
- Session handling

### 🌍 Internationalization
- Multi-language support
- Regional settings and compliance
- Localized content

### ⚙️ Settings Management
- App preferences
- Device configuration
- Smart home automation rules

### 📱 Device Management
- Add new smart devices
- Device pairing and configuration
- Real-time device status monitoring



### Code Style
- Follow Flutter/Dart conventions
- Use meaningful variable and function names
- Add comments for complex logic
- Ensure all tests pass

