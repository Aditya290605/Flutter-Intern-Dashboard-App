// States
import 'package:equatable/equatable.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];

  get brightness => null;
}

class ThemeLight extends ThemeState {}

class ThemeDark extends ThemeState {}
