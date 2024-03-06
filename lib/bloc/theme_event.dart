part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {}

class ThemeChanged extends ThemeEvent {
  ///true   or   false
  final bool isDark;
  ThemeChanged(this.isDark);
}
