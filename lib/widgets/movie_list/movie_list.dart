import 'package:flutter/material.dart';
import 'package:kino_app/resources/resources.dart';

class Movie {
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie({
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });
}

class MovieListWidget extends StatefulWidget {
  MovieListWidget({Key? key}) : super(key: key);

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movies = [
    Movie(
      imageName: AppImages.img0727,
      title: 'Смертельная битва',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'Прибытие',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'Назад в будующие 1',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'Назад в будующие 2',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'Назад в будующие 3',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'Первому игроку приготовится',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'Пиксели',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'Человек паук',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'Лига справедливости',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'Джентельмены',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'Мстители',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'Форд против феррари',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'Человек из стали',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'Тихие зори',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'В бой идут одни старики',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
    Movie(
      imageName: AppImages.img0727,
      title: 'Дюна',
      time: 'April 7, 2021',
      description:
          'Wkghorr trhko olohhkot ookhtokho hrehhr hrhhrhr hrhrhrh rgrhh',
    ),
  ];

  var _filteredMovies = <Movie>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _searchMovies();

    _filteredMovies = _movies;
    _searchController.addListener(_searchMovies);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            padding: EdgeInsets.only(top: 70),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: _filteredMovies.length,
            itemExtent: 163,
            itemBuilder: (BuildContext context, int index) {
              final movie = _filteredMovies[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.black.withOpacity(0.2)),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: Offset(0, 2),
                            )
                          ]),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        onTap: () {
                          print('object');
                        },
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(movie.imageName),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    movie.title,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    movie.time,
                                    style: TextStyle(color: Colors.grey),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    movie.description,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          print('молодец');
                        },
                      ),
                    ),
                  ],
                ),
              );
            }),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Поиск',
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
