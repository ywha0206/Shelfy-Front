import 'package:flutter_riverpod/flutter_riverpod.dart';

bool isDarkMode = false;

class DarkModeStore extends Notifier<bool> {
  @override
  bool build() {
    return isDarkMode;
  }

  void changeDarkMode() {
    state = !state;
  }
}

final darkModeNotiProvider = NotifierProvider<DarkModeStore, bool>(
  () {
    return DarkModeStore();
  },
);
