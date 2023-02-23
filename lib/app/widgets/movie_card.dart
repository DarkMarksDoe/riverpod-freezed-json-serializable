import 'package:flutter/material.dart';
import 'package:riverpod_movie_example/app/data/models/movie.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    required this.movie,
    super.key,
  });
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 170,
            color: const Color(0xfff7f7f7),
            child: Row(
              children: [
                Container(
                  width: 80,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(movie.poster.toString()),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          '${movie.title} (${movie.year})',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Flexible(
                          child: Text(
                            movie.plot.toString(),
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            maxLines: 4,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
