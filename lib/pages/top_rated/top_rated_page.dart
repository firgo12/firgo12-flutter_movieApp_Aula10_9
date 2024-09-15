import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/pages/movie_detail/movie_detail_page.dart';
import 'package:movie_app/pages/top_rated/widgets/top_rated_movie.dart';
import 'package:movie_app/services/api_services.dart';

class TopRatedPage extends StatefulWidget {
  const TopRatedPage({super.key});

  @override
  State<TopRatedPage> createState() => _TopRatedPageState();
}

class _TopRatedPageState extends State<TopRatedPage> {
  ApiServices apiServices = ApiServices();
  late Future<Result> moviesFuture;

  @override
  void initState() {
    moviesFuture = apiServices.getTopRatedMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Rated Movies'),
      ),
      body: FutureBuilder<Result>(
        future: moviesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.movies.length,
              itemBuilder: (context, index) {
                final movie = snapshot.data!.movies[index];
                return TopRatedMovie(
                  movie: movie,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MovieDetailPage(movieId: movie.id),
                      ),
                    );
                  },
                );
              },
            );
          }
          return const Center(
            child: Text('No data found'),
          );
        },
      ),
    );
  }
}
