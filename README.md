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

<img width="434" height="863" alt="Screenshot 2026-08-11 151614" src="https://github.com/user-attachments/assets/33b2e383-2e81-4595-a45b-c2d4403149be" />
<img width="428" height="856" alt="Screenshot 2026-08-11 151127" src="https://github.com/user-attachments/assets/4a1a9582-de48-46ca-9f39-415cad4eda58" />
<img width="417" height="854" alt="Screenshot 2026-08-11 151154" src="https://github.com/user-attachments/assets/4f1e6330-0760-4109-b590-5f95fe0dd5c9" />
<img width="402" height="845" alt="Screenshot 2026-08-11 151052" src="https://github.com/user-attachments/assets/a00b34dc-80ac-417d-b1f5-7f28281d0136" />


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
