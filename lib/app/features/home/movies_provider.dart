import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_movie_example/app/features/home/movies_notifier.dart';

import 'package:riverpod_movie_example/app/features/home/movies_state.dart';

final moviesProvider = StateNotifierProvider<MoviesNotifier, MoviesState>(
    (ref) => MoviesNotifier());
