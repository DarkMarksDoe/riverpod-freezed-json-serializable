import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_movie_example/app/data/models/movie.dart';

part 'movies_state.freezed.dart';

@freezed
class MoviesState with _$MoviesState {
  const factory MoviesState.data(List<Movie> items) = _Data;
  const factory MoviesState.empty() = _Empty;
  const factory MoviesState.loading() = _Loading;
}
