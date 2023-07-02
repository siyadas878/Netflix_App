import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Search/Screen_search.dart';
import 'package:netflix/Presentation/Search/widgets/title.dart';
import 'package:netflix/core/contants.dart';

import '../../../Domain/models/search_model/search_function.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: 'Movies & TV'),
        kheight,
        Expanded(
            child: FutureBuilder(
          future: getimageSearchGrid(searchControllor.text.trim()),
          builder: (context, snapshot) {
            return GridView.builder(
              itemCount: snapshot.data!.length,
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 220,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8),
              itemBuilder: (context, index) {
                return snapshot.hasData
                    ? Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w200${snapshot.data?[index].posterPath}'),
                                fit: BoxFit.cover)),
                      )
                    :const Center(
                        child: CircularProgressIndicator(
                          color: Colors.red,
                        ),
                      );
              },
            );
          },
        ))
      ],
    );
  }
}
