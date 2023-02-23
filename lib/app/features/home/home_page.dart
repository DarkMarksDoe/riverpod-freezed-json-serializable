import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_movie_example/app/features/home/movies_provider.dart';
import 'package:riverpod_movie_example/app/widgets/movie_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          child: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final state = ref.watch(moviesProvider);

              return state.when(
                data: (movies) {
                  developer.log('building movies');
                  return ListView.builder(
                    itemCount: movies.length,
                    itemBuilder: (context, index) {
                      return MovieCard(
                        movie: movies[index],
                      );
                    },
                  );
                },
                empty: (){
                  print('is entering to empty');
                  return const Center(
                    child: Text(
                      'No data found',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 20,
                      ),
                    ),
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
