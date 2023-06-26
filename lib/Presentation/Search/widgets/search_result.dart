import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Search/Screen_search.dart';
import 'package:netflix/Presentation/Search/widgets/title.dart';
import 'package:netflix/core/contants.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitle(title: 'Movies & TV'),
        kheight,  
        Expanded(child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3 ,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1/1.4,
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
    // final screenWidth= MediaQuery.of(context).size.width;
    return Container(
     decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7),
      image: DecorationImage(image: NetworkImage(imgUrl2),
      fit: BoxFit.cover)
     ),
    );
  }
}