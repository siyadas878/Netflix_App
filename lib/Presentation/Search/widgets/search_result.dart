import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Search/widgets/title.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitle(title: 'Movies & TV'),
        Expanded(child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3 ,
          children: List.generate(20, (index) {
            return Maincard();
          }),))
      ],
    );
  }
}

class Maincard extends StatelessWidget {
  const Maincard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}