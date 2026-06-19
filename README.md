# iOSApp2
Third / Fourth Assignment in iOS
# iOSApp2 – Local Business Scavenger Hunt App

## Overview

iOSApp2 is a SwiftUI-based iOS application created as part of the Mobile Application Development program.

The app promotes local businesses through a fun scavenger hunt experience. Participants visit participating businesses, solve clues, locate hidden items, and record their discoveries within the app.

When enough items are found, users qualify for discount rewards and prize opportunities.

---

## Assignment Objective

Develop an iOS application that demonstrates the SwiftUI concepts covered in the Cards tutorial while applying them to a real-world business promotion scenario.

The application includes:

* Navigation between screens
* Data models
* Lists and cards
* State management
* Conditional logic
* User interaction
* Reward calculations
* SwiftUI previews
* GitHub source control

---

## App Features

### Scavenger Hunt Items

The app contains 10 hidden items located at local businesses such as:

* Coffee Shops
* Restaurants
* Book Stores
* Movie Theatres
* Gift Shops
* Sports Stores

Each item includes:

* Business Name
* Hidden Item Name
* Clue
* Reward Information
* Found Status

---

### Clue Screen

Users can:

* View detailed clues
* Read item descriptions
* Mark items as found
* Simulate taking a picture of the discovered item

---

### Progress Tracking

The application tracks:

* Total items found
* Remaining items
* Hunt completion percentage

---

### Reward System

| Items Found | Reward                                                |
| ----------- | ----------------------------------------------------- |
| 0 – 4       | No Reward                                             |
| 5 – 6       | 10% Discount Code                                     |
| 7 – 9       | 20% Discount Code                                     |
| 10          | 20% Discount Code + Entry into $5000 Grand Prize Draw |

---

## Project Structure

```text
iOSApp2
│
├── iOSApp2App.swift
├── ContentView.swift
│
├── Models
│   └── HuntItem.swift
│
├── Data
│   └── HuntData.swift
│
├── Views
│   ├── HuntListView.swift
│   ├── HuntCardView.swift
│   ├── HuntDetailView.swift
│   └── ResultView.swift
│
└── Assets
```

---

## Technologies Used

* Swift 6
* SwiftUI
* Xcode 16+
* Git
* GitHub

---

## How to Run

### Clone Repository

```bash
git clone https://github.com/MovingSpots/iOSApp2.git
```

### Open Project

```bash
Open iOSApp2.xcodeproj
```

### Build Project

```bash
Command + B
```

### Run Application

```bash
Command + R
```

Select an iPhone simulator such as:

* iPhone 15
* iPhone 16
* iPhone 16 Pro

---

## SwiftUI Preview

To open Canvas Preview:

```bash
Option + Command + Return
```

If Preview is paused:

1. Click Resume
2. Build project again
3. Clean Build Folder if necessary

```bash
Shift + Command + K
```

---

## Git Commands

### Check Status

```bash
git status
```

### Add Files

```bash
git add .
```

### Commit Changes

```bash
git commit -m "Completed scavenger hunt core functionality"
```

### Push to GitHub

```bash
git push origin main
```

---

## Future Enhancements

Possible improvements for the next assignment:

* Camera Integration
* Photo Validation
* GPS Location Verification
* User Authentication
* Online Submission API
* QR Code Scanning
* Business Dashboard
* Leaderboard
* Apple Map Integration
* Cloud Storage

---

## Learning Outcomes

This project demonstrates:

* SwiftUI Navigation
* Lists and Cards
* State Management
* Model Design
* Data Binding
* Conditional UI
* Git Version Control
* GitHub Collaboration

---

## Author

**Selvaraj Thyagarajan**

Mobile Application Development (iOS)
triOS College, Ontario, Canada

GitHub:
https://github.com/MovingSpots

---

## License

This project is licensed under the MIT License.
