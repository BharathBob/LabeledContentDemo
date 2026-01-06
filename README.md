# 📱 LabeledContentDemo (SwiftUI)


A modern **SwiftUI demo app** demonstrating how to build a clean, scalable **Profile & Settings screen** using **`LabeledContent`**, enum-driven data, and **iOS 26–ready MapKit APIs**.

This project focuses on **clean architecture**, **type safety**, and **future-proof Apple frameworks**.

<img width="345" height="492" alt="image" src="https://github.com/user-attachments/assets/1a018acf-6aea-471f-a5c7-71ee7640d61f" />

---

## ✨ Features

- Profile screen with avatar and personal details
- `LabeledContent`-based Settings UI (iOS 16+)
- Enum & helper-driven data source (no hardcoded strings)
- Light / Dark / System theme support
- Address → Map preview using **MapKit (iOS 26 compliant)**
- External links (Website & LinkedIn)
- Clean MVVM-style SwiftUI architecture

---
## Sample Code to use 
```swift
LabeledContent {
                Text("john.doe@example.com")
                    .foregroundColor(.blue)
            } label: {
                Label("Email", systemImage: "envelope.fill")
            }
```
---

## 🗂 Project Structure

```text
LabeledContentDemo
├── App
│   ├── Helpers
│   │   ├── AppHelper.swift
│   │   └── AppTheme.swift
│   └── LabeledContentDemoApp.swift
│
├── Model
│   └── UserProfile.swift
│
├── View
│   ├── AddressMapView.swift
│   ├── ContentView.swift
│   ├── OtherInfoSectionView.swift
│   ├── PreferencesSectionView.swift
│   ├── ProfileAvatarView.swift
│   └── ProfileSectionView.swift
│
├── ViewModel
│   └── AddressMapViewModel.swift
│
└── Assets
```

## 🧠 Architecture Overview
- MVVM-inspired SwiftUI architecture
- Views are fully declarative and data-driven
- Enums define UI structure for type safety
- Helpers centralize sample data and app-level logic
- ViewModels handle business logic and MapKit interaction
- Address → Map (iOS 26+)
- Uses MKLocalSearch
- No deprecated CLGeocoder or placemark
- Uses MapCameraPosition
- Fully async and future-proof

## 🎨 Theme Support
Users can switch between:
- System
- Light
- Dark
  
Theme preference is stored using @AppStorage and applied globally.

---

## 📸 Screenshots

| Profile | Preferences |
|--------|-------------|
| <img width="408" height="846" alt="image" src="https://github.com/user-attachments/assets/8438e9d4-aa32-434b-a791-2e53730cb415" /> | <img width="417" height="847" alt="image" src="https://github.com/user-attachments/assets/1a1bf01c-91cb-4a0d-9a6d-7885117a4d0d" />
# Landscape Mode 
<img width="1440" height="849" alt="image" src="https://github.com/user-attachments/assets/f6d4ca89-c0c8-46e6-80e1-8948c5e52392" />
<img width="1438" height="842" alt="image" src="https://github.com/user-attachments/assets/c3facbcc-662b-49bb-862c-115e20060fe8" />
 
> Screenshots taken on iPhone simulator (Light & Dark mode)

---

## 🛠 Requirements
Xcode 16+
iOS 16+ (UI)
iOS 26+ (MapKit APIs)
SwiftUI

## 🚀 Getting Started
### Clone the repository
- git clone https://github.com/your-username/LabeledContentDemo.git
### Open in Xcode
- open LabeledContentDemo.xcodeproj
Run on Simulator or device

## 📌 Use Cases
SwiftUI learning reference
Interview-ready demo project
Profile / Settings screen boilerplate
Exploring iOS 26 MapKit changes
Medium article companion code

## 👤 Author
Viswa Bharath |  iOS Developer
- LinkedIn: https://linkedin.com/in/viswabharathdakka
- Portfolio: https://viswabharathdakka.lovable.app

## 📄 License
MIT License.
Feel free to use, modify, and learn from this project.
