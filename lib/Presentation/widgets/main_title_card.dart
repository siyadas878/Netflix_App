import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/Domain/models/latest_model/latest_function.dart';
import 'package:netflix/Domain/models/now_playing/now_playing_function.dart';
import 'package:netflix/Domain/models/popular_result_model/popular_function.dart';
import 'package:netflix/Domain/models/search_model/search_function.dart';
import 'package:netflix/Domain/models/trending/trending_function.dart';

import '../../core/contants.dart';
import 'main_card.dart';
import 'main_title.dart';

class Released extends StatelessWidget {
  const Released({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: 'Released in the past',
        ),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getImagePopular(),
            builder: (context, snapshot) {
              return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
                  return snapshot.hasData? Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: MainCard(
                        imgString:
                            'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                      )):Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.red,
                                    ),
                                  );
                }),
              );
            },
          ),
        )
      ],
    );
  }
}

class Trending extends StatelessWidget {
  const Trending({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: 'Trending now',
        ),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getLatest(),
            builder: (context, snapshot) {
              return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
                  return snapshot.hasData? Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: MainCard(
                        imgString:
                            'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                      )):Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.red,
                                    ),
                                  );
                }),
              );
            },
          ),
        )
      ],
    );
  }
}

class Dramas extends StatelessWidget {
  const Dramas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: 'Tense Dramas',
        ),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: GetNowPlaying(),
            builder: (context, snapshot) {
              return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
                  return snapshot.hasData? Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: MainCard(
                        imgString:
                            'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                      )):Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.red,
                                    ),
                                  );
                }),
              );
            },
          ),
        )
      ],
    );
  }
}

class SouthIndian extends StatelessWidget {
  const SouthIndian({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: 'South Indian Cinemas',
        ),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getimageSearch(),
            builder: (context, snapshot) {
              return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
                  return snapshot.hasData? Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: MainCard(
                        imgString:
                            'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}',
                      )):Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.red,
                                    ),
                                  );
                }),
              );
            },
          ),
        )
      ],
    );
  }
}
