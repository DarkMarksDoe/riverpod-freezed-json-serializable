import 'dart:convert';

import 'package:flutter/services.dart' as rootBundle;
import 'package:riverpod_movie_example/app/data/models/movie.dart';

class MoviesAPI {
  Future<List<Movie>> getMovies() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final moviesData =
          await rootBundle.rootBundle.loadString('data/movies.jso');
      final moviesList = json.decode(moviesData) as List<dynamic>;
      return moviesList.map((e) => Movie.fromJson(e)).toList();
    } catch (e) {
      print(e);
      return [];
    }
  }
}
