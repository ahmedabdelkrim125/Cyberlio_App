# Cyberlio — E‑Commerce UI Demo

![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.10-0175C2?logo=dart&logoColor=white)
![Status](https://img.shields.io/badge/status-demo%2Fportfolio-orange)
![Platform](https://img.shields.io/badge/platform-Android%20%7C%20iOS%20%7C%20Web%20%7C%20Desktop-lightgrey)

> **This is a demo project, not a production app.** It was built to practice and showcase clean Flutter code — architecture, reusable widgets, a real design‑token system, and a fully responsive UI — using static/sample data instead of a live backend.

---

## Table of contents

- [About](#about)
- [Screens & flow](#screens--flow)
- [Tech stack](#tech-stack)
- [What this project demonstrates](#what-this-project-demonstrates)
- [Project structure](#project-structure)
- [Design system](#design-system)
- [Getting started](#getting-started)
- [Known limitations](#known-limitations)
- [Roadmap](#roadmap)
- [Contributors](#contributors)

---

## About

**Cyberlio** is a Flutter e‑commerce UI built end‑to‑end as a portfolio piece: onboarding → home → product/shop → checkout, all wired together with real navigation and a consistent design system — no third‑party UI kit, no boilerplate templates.

The goal isn't to ship a real store; it's to show how the codebase is organized, styled, and kept consistent as it grows.

## Screens & flow

```
Onboarding ──▶ Bottom Navigation ──┬──▶ Home ──▶ Shop (Product Details) ──▶ Checkout
                                    ├──▶ Favorites
                                    └──▶ Profile
```

| Screen | What it shows |
|---|---|
| **Onboarding** | Full-bleed splash with a "Log in" CTA and a "Skip" entry point into the app |
| **Home** | Search bar, category chips, a horizontal "Hot sales" product rail, and a "Recently viewed" section |
| **Shop / Product details** | Image gallery with a thumbnail selector, price, color variants, rating, and Add to cart / Buy now actions |
| **Checkout** | Order product summary, a shipping method switcher (Home delivery / Pick up in store), a swipeable payment card slider, quick‑pay options, an order summary breakdown, and a finalize‑purchase CTA |
| **Favorites / Profile** | Scaffolded entry points in the bottom nav — intentionally left as placeholders (see [Roadmap](#roadmap)) |

## Tech stack

| Layer | Choice |
|---|---|
| Language / framework | Dart & Flutter (SDK `^3.10.1`) |
| Navigation | Custom `onGenerateRoute` router (no routing package) |
| Responsive layout | Custom `BuildContext`/`num` extensions on top of [`flutter_screenutil`](https://pub.dev/packages/flutter_screenutil) |
| Icons / vectors | [`flutter_svg`](https://pub.dev/packages/flutter_svg) |
| Bottom navigation | [`google_nav_bar`](https://pub.dev/packages/google_nav_bar) |
| Fonts | Custom `PPMori` typeface |

No state‑management package, no backend SDK, no local database — kept intentionally lean for a UI‑focused demo (see [Known limitations](#known-limitations)).

## What this project demonstrates

- **Feature‑first architecture** — every feature owns its `ui/` and `widgets/`, instead of one flat `screens/` folder.
- **A real design‑token system** — every color in the app is pulled from a single `AppColors` class (greys, accents, gradients, semantic tokens like `success`/`greyBorder`) and every text style from `TextStyles`. Zero hardcoded `Colors.xxx` / `Color(0x...)` literals in feature code.
- **Composable, reusable widgets** — screens are assembled from small single‑purpose widgets (`ProductItem`, `PaymentCard`, `SectionHeader`, `OrderSummary`, …) rather than giant build methods.
- **Consistent responsive design** — one small extension layer (`.w(context)`, `.h(context)`, `.r(context)`, `responsivePadding(...)`) used everywhere instead of hardcoded pixel values.
- **Clean navigation** — named routes generated centrally through `AppRouter.generateRoute`, so screens never reach into each other directly.

## Project structure

```
lib/
├── core/
│   ├── constants/        # asset path constants (Assets.xxx)
│   ├── helper/           # responsive extensions, spacing, validation, snackbar helper
│   ├── routing/          # Routes + AppRouter (onGenerateRoute)
│   ├── theme/            # AppColors, TextStyles — the single source of truth for styling
│   └── widgets/          # shared widgets (form fields, dialogs, section headers)
├── features/
│   ├── onboarding/
│   ├── bottom_nav/
│   ├── home/
│   ├── shop/
│   ├── checkout screen/
│   ├── favorites/        # placeholder — see Roadmap
│   └── profile/          # placeholder — see Roadmap
└── main.dart
```

Each feature folder is self‑contained: its `ui/` holds the screen, its `widgets/` holds the pieces that make it up, and nothing outside `core/` is shared implicitly.

## Design system

All colors live in [`lib/core/theme/app_colors.dart`](lib/core/theme/app_colors.dart):

```dart
class AppColors {
  static const Color primaryOrange = Color(0xFFFF5500);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  // grey scale, gradients, semantic tokens (success, amber, greyBorder…)
  ...
}
```

Any new UI adds a named token here instead of inlining a color — which keeps the whole app visually consistent and makes a future theme/dark‑mode pass a one‑file change.

## Getting started

**Prerequisites:** [Flutter SDK](https://docs.flutter.dev/get-started/install) (channel stable, Dart ≥ 3.10).

```bash
# 1. Clone the repo
git clone https://github.com/yosramohsen2-png/Cyberlio_App.git
cd Cyberlio_App

# 2. Install dependencies
flutter pub get

# 3. Run on a connected device/emulator
flutter run
```

## Known limitations

This is a **UI demo**, so on purpose it does *not* include:

- A backend or API — product/catalog data is static, written directly in the widgets.
- A state‑management library — screens use plain `StatelessWidget` / local `StatefulWidget` state.
- Authentication, persistence, or real payment processing — the payment cards and quick‑pay buttons are visual only.

## Roadmap

- [ ] Build out the Favorites and Profile screens
- [ ] Introduce a state‑management solution (Bloc/Riverpod) as the app grows
- [ ] Move product data behind a repository/service layer, backed by a real or mock API
- [ ] Add automated widget tests per feature

## Contributors

- [Yosra Mohsen](https://github.com/yosramohsen2-png)
- [Ahmed AbdElkrim](https://github.com/ahmedabdelkrim125)
