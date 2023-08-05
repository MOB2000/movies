import 'package:flutter/material.dart';
import 'package:movies/screens/genre_wise_screen.dart';
import 'package:movies/utils/constants.dart';
import 'package:movies/utils/navi.dart' as navi;
import 'package:movies/widgets/custom_movies_button.dart';
import 'package:sizer/sizer.dart';

class MovieDetails {
  final String title;
  final String year;
  final bool isFavorite;
  final double rating;
  final Map<String, int> genres;

  final String overview;
  final String backgroundURL;

  MovieDetails({
    required this.title,
    required this.year,
    required this.isFavorite,
    required this.rating,
    required this.genres,
    required this.overview,
    required this.backgroundURL,
  });

  List<CustomMoviesButton> getGenresList(BuildContext context) {
    List<CustomMoviesButton> temp = [];
    genres.forEach((genre, genreId) {
      temp.add(
        CustomMoviesButton(
          onPressed: (() => navi.newScreen(
              newScreen: () => GenreWiseScreen(
                    genre: genre,
                    genreId: genreId,
                  ),
              context: context)),
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          color: kLightGrey,
          text: genre,
        ),
      );
    });

    return temp;
  }
}
