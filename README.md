<h1 align="center">Notes App</h1>

<p align="center">A dark-themed, offline-first notes app with colour-coded notes, stored locally with Hive.</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart" />
  <img src="https://img.shields.io/badge/State-Cubit%20(bloc%209)-13B9FD?style=for-the-badge" alt="Cubit" />
  <img src="https://img.shields.io/badge/Storage-Hive-FFB300?style=for-the-badge" alt="Hive" />
  <img src="https://img.shields.io/badge/Platform-Android%20%7C%20iOS-3DDC84?style=for-the-badge" alt="Platform" />
</p>

## About

A notes app built while learning **Cubit state management** and **local persistence with Hive**. Notes are saved on the device in a typed Hive box, so everything works offline and survives app restarts. Each note has a title, a description, a creation timestamp and a colour that you pick from a palette of ten.

## ✨ Features

- 📝 **Add notes** from a bottom sheet with a validated form (title and description).
- 🎨 **Colour-coded cards**: choose from 10 colours when you create or edit a note.
- ✏️ **Edit notes**: change the title, description and colour, then save. The editor preselects the closest palette colour.
- 🗑️ **Delete** with one tap from the note card.
- 🕒 **Timestamps**: each note stores its creation date, formatted with `intl`.
- 💾 **Offline persistence**: a Hive box with a generated `TypeAdapter` for `NoteModel`.
- ⏳ **Loading handling**: the sheet is locked (`AbsorbPointer`) while a note is saved, with a SnackBar on failure.
- 🔎 **BlocObserver** logs cubit lifecycle and state changes during development.
- 🌙 **Dark theme** with the Poppins font.

## 🛠 Tech stack

| Concern | Choice |
|---|---|
| State management | `flutter_bloc` / `bloc` 9 (`NotesCubit`, `AddNoteCubit`) |
| Local database | `hive`, `hive_flutter`; `hive_generator` + `build_runner` for the adapter |
| Utilities | `intl` (date formatting) |
| Navigation | Named routes (`NotePage`, `EditNoteView`) |

## 🏗 Project structure

```
lib/
├── cubits/
│   ├── add_note_cubit/     # AddNoteCubit (loading / success / failure)
│   └── notes_cubit/        # NotesCubit (fetch all notes)
├── models/                 # NoteModel + generated note_model.g.dart
├── views/
│   ├── widgets/            # note card, forms, colour pickers, app bar...
│   ├── Note_view.dart
│   └── edit_note_view.dart
├── constant.dart           # box name + colour palette
├── simple_bloc_observer.dart
└── main.dart               # Hive init, adapter registration, routes
```

## 🚀 Getting started

**Prerequisites:** Flutter SDK (Dart `^3.7.0`).

```bash
git clone https://github.com/youssef336/notes_app.git
cd notes_app
flutter pub get
flutter run
```

If you change `NoteModel`, regenerate the Hive adapter:

```bash
dart run build_runner build --delete-conflicting-outputs
```

## 👤 Author

**Youssef Belal Zakaria** · [GitHub @youssef336](https://github.com/youssef336)

⭐ If you like this project, give it a star!
