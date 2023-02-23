import 'package:riverpod_movie_example/app/data/models/movie.dart';
import 'package:riverpod_movie_example/app/data/providers/movies_api.dart';

class MoviesRepository {
  final MoviesAPI _api = MoviesAPI();

  Future<List<Movie>> getMovies() {
    return _api.getMovies();
  }
}
