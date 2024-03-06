import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/app_theme/app_theme_colors.dart';
import 'package:theme_bloc/bloc/theme_bloc.dart';
import 'package:theme_bloc/screens/home_screen.dart';

void main() {
  runApp(BlocProvider(create: (context) => ThemeBloc(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeMode>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: lightTheme,
          themeMode: state,
          darkTheme: darkTheme,
          home: HomeScreen(),
        );
      },
    );
  }
}
