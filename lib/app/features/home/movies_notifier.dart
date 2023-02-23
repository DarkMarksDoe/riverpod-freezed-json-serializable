import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_movie_example/app/data/repositories/movies_repository.dart';
import 'package:riverpod_movie_example/app/features/home/movies_state.dart';

class MoviesNotifier extends StateNotifier<MoviesState> {
  MoviesNotifier() : super(const MoviesState.loading()) {
    loadMovies();
  }
  final MoviesRepository _moviesRepository = MoviesRepository();
  void loadMovies() async {
    final movies = await _moviesRepository.getMovies();
    print(movies.length);
    if (movies.isEmpty) {
      state = const MoviesState.empty();
      print('empty');
    }
    state = MoviesState.data(movies);
  }
}



// Added riverpod and freezed to pubspec.yaml
// Created a new project that uses riverpod and freezed