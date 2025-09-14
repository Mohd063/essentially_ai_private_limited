# Essentially AI Private Limited - Flutter Orders Page

This repository contains a **Flutter implementation of a mobile-responsive 'Orders' page** as part of the internship assignment for Diamond Hands LLP (021.Trade).

The project focuses on **UI/UX quality, responsiveness, and clean Flutter code**.

---

## 📄 Assignment Overview

- Recreate the provided web Orders page in **Flutter for mobile devices**.
- The UI must be **responsive**, working smoothly on small and large screens.
- Key features:
  - Display **open orders** in **card view** on mobile.
  - Display **table view** on larger screens (tablet/desktop).
  - Include **filters** (All / Buy / Sell) and a **search box**.
  - Show **market indicators** with color-coded values.
  - Implement **cancel buttons** with responsive layout.

---

## 🛠 Project Structure

essentially_ai_private_limited/
│
├─ lib/
│ ├─ main.dart # Entry point of the app
│ ├─ models/
│ │ └─ order.dart # Order model
│ ├─ data/
│ │ └─ dummy_orders.dart # Dummy orders data
│ ├─ screens/
│ │ └─ orders_page.dart # Orders page UI
│ └─ widgets/
│ ├─ custom_chip.dart # Filter chips and search box
│ ├─ market_chip.dart # Market indicator widget
│ ├─ order_card.dart # Card view for mobile
│ └─ order_table.dart # Table view for larger screens
│
├─ pubspec.yaml
└─ README.md
---

## 🚀 How to Run

1. **Clone the repository:**

```bash
git clone https://github.com/Mohd063/essentially_ai_private_limited.git
cd essentially_ai_private_limited
flutter pub get
flutter run
