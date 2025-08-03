import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:intern_dash_board/bloc/theme/theme_event.dart';
import 'package:intern_dash_board/bloc/theme/theme_state.dart';

// Bloc
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeLight()) {
    on<ThemeToggleRequested>(_onThemeToggleRequested);
    on<ThemeInitialized>(_onThemeInitialized);
  }

  void _onThemeToggleRequested(
    ThemeToggleRequested event,
    Emitter<ThemeState> emit,
  ) {
    if (state is ThemeLight) {
      emit(ThemeDark());
    } else {
      emit(ThemeLight());
    }
  }

  void _onThemeInitialized(ThemeInitialized event, Emitter<ThemeState> emit) {
    if (event.isDarkMode) {
      emit(ThemeDark());
    } else {
      emit(ThemeLight());
    }
  }

  bool get isDarkMode => state is ThemeDark;
}
