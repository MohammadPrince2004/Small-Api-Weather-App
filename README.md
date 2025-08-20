# 🌤️ Weather App

  A simple weather application built with **Flutter**, using **Weatherstack API** to fetch real-time weather data.  
  The app gets the user's location using **Geolocator** and **Geocoding**, then displays weather details in a clean UI.  

---

## 🚀 Features
    - 🌍 Get current location automatically.
    - 📡 Fetch live weather data from **Weatherstack API**.
    - 🔄 Organized state management with **Provider**.
    - ⚡ Efficient networking with **Dio**.
    - 🛠️ Built with clean **OOP principles**.

---

## 🛠️ Technologies & Packages
    - **Flutter** (Dart)
    - **Provider** – State Management
    - **Dio** – API Requests
    - **Weatherstack API** – Weather Data
    - **Geolocator** – Get Device Location
    - **Geocoding** – Convert coordinates to readable location

---

## 📂 Project Structure
    lib/
      ├── Ui/ # UI & design layer
      │   ├── Pages/ # Screens of the app (HomePage, MainPage, etc.)
      │   ├── Widgets/ # Reusable widgets (choosenMeasurand , PageDesign, etc.)
      │   └── main.dart # App entry point
      │
      └── Lib/ # Core logic & libraries
          ├── Api/ # API abstraction & Dio implementation
          │ ├── AbsApi.dart
          │ └── DioApi.dart
          │
          ├── ApiModels/ # Data models for API responses
          │ ├── FullModel.dart
          │ └── ApiResponse.dart
          │
          └── Services/ # Business logic & services (WeatherServices, etc.)
  

