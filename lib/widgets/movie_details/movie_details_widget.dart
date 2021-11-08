import 'package:flutter/material.dart';
import 'package:kino_app/widgets/movie_details/movie_details_main_info_widget.dart';

import 'package:kino_app/widgets/movie_details/movie_details_main_screen_cast_widget.dart';

class MovieDetailsWidhet extends StatefulWidget {
  final int movieId;
  MovieDetailsWidhet({
    Key? key,
    required this.movieId,
  }) : super(key: key);

  @override
  _MovieDetailsWidhetState createState() => _MovieDetailsWidhetState();
}

class _MovieDetailsWidhetState extends State<MovieDetailsWidhet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tom Clancy`s Without Remorse'),
      ),
      body: ColoredBox(
        color: Color.fromRGBO(24, 23, 27, 1.0),
        child: ListView(
          children: [
            MovieDetailsMainInfoWidget(),
            SizedBox(height: 30),
            MovieDetailsMainScreenCastWidget(),
          ],
        ),
      ),
    );
  }
}
