import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {
  @JsonKey(name: 'Title')
  String? title;
  @JsonKey(name: 'Year')
  String? year;
  @JsonKey(name: 'Genre')
  List<String>? genre;
  @JsonKey(name: 'Plot')
  String? plot;
  @JsonKey(name: 'Poster')
  String? poster;
  @JsonKey(name: 'imdbRating')
  String? imdbRating;
  @JsonKey(name: 'Type')
  String? type;

  Movie({
    this.title,
    this.year,
    this.genre,
    this.plot,
    this.poster,
    this.imdbRating,
    this.type,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  /// Connect the generated [_$MovieToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
