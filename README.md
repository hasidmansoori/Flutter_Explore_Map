# Explore Map App

Explore Map App is a Flutter-based application that allows users to interact with a map, view predefined markers for cycling spots, shopping centers, and restaurants, and explore additional details for each location. The app includes category-based marker filtering, animations, and an intuitive user interface.

---

## Features

- **Google Maps Integration**: Displays an interactive map using Google Maps.  
- **Category Filtering**: Toggle between "Cycle," "Shopping," and "Restaurant" views to display specific markers.  
- **Marker Details**: Click on a marker to view its name, description, and an optional image in a bottom sheet.  
- **Floating Action Buttons (FABs)**: Easy-to-use FABs for switching between categories.  
- **Custom Marker Icons**: Unique icons for each category.  
- **User Interactivity**: Zoom, pan, and interact with the map smoothly.  
- **Responsive Design**: Compatible with both light and dark themes.  

---

## Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/hasidmansoori/Flutter_Explore_Map.git
cd Flutter_Explore_Map
```

### 2. Setup Instructions
Install Dependencies
```bash
flutter pub get
```

### 3. Add Google Maps API Key
Obtain an API key from the Google Cloud Console. Then, add the API key to the following files:

Android:
Add it in android/app/src/main/AndroidManifest.xml:
```bash
<meta-data
    android:name="com.google.android.geo.API_KEY"
    android:value="YOUR_API_KEY_HERE" />
```

iOS:
Add it in ios/Runner/AppDelegate.swift:
```bash
GMSServices.provideAPIKey("YOUR_API_KEY_HERE")
```

### 4. Run the App
Connect a device or start an emulator, then run:
```bash
flutter run
```

## Dependencies

The app uses the following dependencies:

- **google_maps_flutter**: For integrating Google Maps.  
- **flutter_svg**: For rendering SVG icons (optional, if needed).  
- **provider**: For state management (optional).  
- **geolocator**: For accessing user location (optional, bonus feature).  

Install them using:
```bash
flutter pub add google_maps_flutter flutter_svg provider geolocator
```

## Contact

If you have any questions or feedback, feel free to reach out:

- **Email**: hasidmansoori786@gmail.com  
- **GitHub**: [https://github.com/hasidmansoori](https://github.com/hasidmansoori)
