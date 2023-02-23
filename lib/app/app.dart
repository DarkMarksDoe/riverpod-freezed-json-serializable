import 'package:flutter/material.dart';
import 'package:riverpod_movie_example/app/features/home/home_page.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Movie App',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.black,
          secondary: Colors.blue,
        ),
      ),
      home: const HomePage(),
    );
  }
}
