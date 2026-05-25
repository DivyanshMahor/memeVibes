# 😎 MemeVibes

> Scroll memes, feel vibes, change colors automatically.

MemeVibes is a Flutter-based meme streaming app that fetches fresh memes from Reddit API and dynamically changes UI colors based on image palette.

---

## ✨ Features

- 😂 Live Meme Feed (Reddit API)
- 🖼️ Auto Image Loading with Caching
- 🎨 Dynamic Background Color Extraction
- ⚡ Smooth Scroll Experience
- 📊 Meme Stats (Upvotes)
- 🔗 Direct Post Link Access
- 🧠 Smart UI Theme Adaptation

---

## 🛠️ Tech Stack

- Flutter
- Dart
- REST API (meme-api.com)
- HTTP Package
- Cached Network Image
- Palette Generator (color extraction)

---

## 🧠 How It Works

- API fetches 50 memes at once
- Each meme is parsed into a `Meme` model
- Images are loaded using cached network images
- PaletteGenerator extracts dominant colors
- UI background changes dynamically per meme

---

## 📂 Project Structure
lib/
├── models/
│ └── meme_model.dart
├── services/
│ └── meme_service.dart
├── screens/
│ └── meme_home_page.dart
├── widgets/
│ └── meme_card.dart
└── main.dart

---

## 🚀 Getting Started

### 1. Clone repo
```bash
git clone https://github.com/DivyanshMahor/memeVibes.git
2. Install dependencies
flutter pub get
3. Run app
flutter run
💡 What I Learned
REST API integration in Flutter
JSON parsing into models
Dynamic UI color extraction
Image caching optimization
Stateful UI updates
📸 Screenshots

Add screenshots here (important for Play Store + GitHub)

🔥 Future Improvements
❤️ Like / Save memes
🔍 Category-based memes (funny, dank, etc.)
📤 Share meme feature
🌙 Dark mode toggle
🔔 Daily meme notifications
👨‍💻 Developer
Name: Divyansh Mahor
Project: MemeVibes
Type: Entertainment / Social Feed App
⭐ Support

If you like this project, give it a ⭐ on GitHub 😄
