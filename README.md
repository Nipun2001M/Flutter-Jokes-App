# **Fetch-Jokes**

Fetch-Jokes is a Flutter-based application that delivers a delightful joke-telling experience through a clean, user-friendly interface. The app utilizes the **Provider** package for efficient state management and the **Dio** package for seamless HTTP requests. Designed with scalability and maintainability in mind, Fetch-Jokes ensures smooth performance and a polished user experience.

---

## **Features**

- **Instant Joke Fetching**: Retrieve jokes from an API with just one tap.
- **Responsive UI**: Dynamically adjusts to loading states and error scenarios.
- **Material Design Principles**: A scrollable joke list with modern, intuitive styling.
- **Pull-to-Refresh**: Swipe down to refresh jokes effortlessly.
- **Offline Support**: Cache jokes locally for uninterrupted enjoyment.
- **No Internet Alert**: Displays a pop-up notification when offline.
- **Customizations**: Personalized app icon and name for a unique branding experience.
- **JSON Serialization/Deserialization**: Ensures accurate data handling when converting JSON data from the API into Dart objects.

---

## **Project Structure**

The app follows a modular and scalable folder structure:

```
lib/
├── components/                # Reusable UI components
│   ├── fetch_jokes_button.dart    # Button to fetch jokes
│   ├── joke_card.dart             # Card design for jokes
│   ├── joke_category_dropdown.dart # Dropdown menu for selecting categories
│   └── no_internet_popup.dart     # Popup for no internet connection
├── services/                 # Logic for API calls and caching
│   ├── joke_service.dart         # API communication layer
│   └── cache_manager.dart        # Handles local caching of jokes
├── state/                    # State management using Provider
│   └── joke_state.dart           # Centralized state for joke management
├── utils/                    # Utilities and constants
│   └── app_constants.dart       # Constants like API URLs
├── screens/                  # Main app screens
│   ├── home_page.dart            # Home screen UI
└── main.dart                 # Application entry point
assets/                       # Static assets
    ├── images/                   # Images used in the app
    └── fonts/                    # Custom fonts (Lato, LobsterTwo)
```

---

## **Dependencies**

### Essential Packages
- **Provider**: Manages state efficiently across the app.
- **Dio**: Handles API requests with advanced networking features.

### Additional Packages
- **flutter_launcher_icons**: Customizes app icons.
- **shared_preferences**: Caches jokes locally for offline access.
- **internet_connection_checker**: Monitors internet connectivity.

Install dependencies:
```bash
flutter pub get
```

---

## **How It Works**

### **State Management**
- **`JokeState`**: Governs the app's overall state, including loading and fetching joke data.

### **Networking and Caching**
- **`JokeService`**: Uses **Dio** to fetch jokes from an external API.
- **`CacheManager`**: Saves jokes locally with **shared_preferences**, ensuring offline availability.

### **UI Features**
- **HomePage**: Displays a joke-fetch button, category dropdown, and a styled list of jokes.
- **No Internet Popup**: Alerts the user when offline.
- **Pull-to-Refresh**: Swipe gesture to refresh the joke list.

---

## **Customizations**

- **API**: Update the API endpoint in `lib/utils/app_constants.dart`.
- **Styling**: Modify fonts in the `assets/fonts` folder or adjust styles in relevant components.
- **Assets**: Replace app images in the `assets/images` folder for a personalized touch.

---

## **Getting Started**

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/manojtharindu11/fetch-jokes.git
   ```

2. **Navigate to the Directory**:
   ```bash
   cd fetch-jokes
   ```

3. **Fetch Dependencies**:
   ```bash
   flutter pub get
   ```

4. **Run the App**:
   ```bash
   flutter run
   ```

---

## **Contributing**

We welcome contributions to improve Fetch-Jokes! To contribute:

1. Fork the repository.
2. Create a new branch for your feature:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add your feature description"
   ```
4. Push the branch:
   ```bash
   git push origin feature/your-feature-name
   ```
5. Open a pull request.

---

## **Future Enhancements**

- **User-Generated Content**: Allow users to submit their jokes.
- **Theming Options**: Introduce dark mode and custom themes.
- **Social Sharing**: Add functionality to share jokes across social platforms.
- **Voice Integration**: Implement a text-to-speech feature to read jokes aloud.
- **Multi-Language Support**: Provide jokes in multiple languages.

---

## **License**

This project is licensed under the MIT License. See the `LICENSE` file for details.

---

## **Acknowledgments**

- **Flutter Documentation**: For providing extensive guides and tutorials.
- **Joke APIs**: For delivering the jokes that power this app.
- **Contributors**: Special thanks to everyone who has contributed to this project.
