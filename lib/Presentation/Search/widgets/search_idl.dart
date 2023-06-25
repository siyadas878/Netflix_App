import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Search/Screen_search.dart';
import 'package:netflix/Presentation/Search/widgets/title.dart';

import '../../../core/contants.dart';

class SearchIdl extends StatelessWidget {
  const SearchIdl({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: 'Top Search'),
        Expanded(child: 
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
          return const TopSearchTile();
        }, 
        separatorBuilder: (context, index) => kwidth20, 
        itemCount: 10))
      ],
    );
  }
}

class TopSearchTile extends StatelessWidget {
  const TopSearchTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth= MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
           width: screenWidth * 0.4,
           height: 100,
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            image: DecorationImage(
              image: NetworkImage(imgUrl),
              fit: BoxFit.cover,
              )
           ),
          ),
          kwidth5,
          Expanded(child: Text('Movie Name',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
          Icon(Icons.play_circle_outline,color: kwhite,size: 45,)
        ],
      ),
    );
  }
}
