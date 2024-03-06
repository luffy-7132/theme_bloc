import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/bloc/theme_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Switch(
            ///true --- false
            onChanged: (value) {
              context.read<ThemeBloc>().add(ThemeChanged(value));
            },

            ///light or dark   true or false
            value: context.read<ThemeBloc>().state == ThemeMode.dark,
          )
        ],
      ),
      body: Center(
        child: Text('This is theme'),
      ),
    );
  }
}
