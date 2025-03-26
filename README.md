# Weather App

A Flutter-based weather application utilizing the **Cubit** state management from **Bloc** and real-time weather data from [WeatherAPI](https://www.weatherapi.com/).

## Features

- 🌦 Fetch real-time weather data for any location.
- 📍 Search by city name.
- 🌡 Display temperature, humidity, and wind speed.
- 🎨 Beautiful UI with dynamic weather illustrations.
- ⚡ State management using **Cubit** for efficiency.

## Getting Started

### Prerequisites

- Flutter SDK installed ([Get Flutter](https://docs.flutter.dev/get-started/install))
- API key from [WeatherAPI](https://www.weatherapi.com/)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/MAADALHAKMI/Weather-App-.git
   ```
2. Navigate to the project directory:
   ```bash
   cd Weather-App-
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Add your WeatherAPI key to the project.
   - Locate the configuration file (e.g., `.env` or `constants.dart`).
   - Insert your API key as follows:
     ```dart
     const String weatherApiKey = "YOUR_API_KEY_HERE";
     ```
5. Run the app:
   ```bash
   flutter run
   ```

## Technologies Used

- **Flutter** for cross-platform development
- **Cubit (Bloc)** for state management
- **Dart** as the programming language
- **WeatherAPI** for fetching real-time weather data

## Contributing

Feel free to fork the repository and submit a pull request. Contributions are welcome! 🚀

## License

This project is licensed under the MIT License.

---

Made with ❤️ using Flutter!

