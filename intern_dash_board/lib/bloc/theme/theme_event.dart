// Events
import 'package:equatable/equatable.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ThemeToggleRequested extends ThemeEvent {}

class ThemeInitialized extends ThemeEvent {
  final bool isDarkMode;

  const ThemeInitialized({required this.isDarkMode});

  @override
  List<Object> get props => [isDarkMode];
}
