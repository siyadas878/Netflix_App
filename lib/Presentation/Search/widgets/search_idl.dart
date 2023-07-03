import 'package:flutter/material.dart';
import 'package:netflix/Domain/models/trending/trending_function.dart';
import 'package:netflix/Presentation/Search/Screen_search.dart';
import 'package:netflix/Presentation/Search/widgets/title.dart';
import '../../../core/contants.dart';

class SearchIdl extends StatelessWidget {
  const SearchIdl({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: 'Top Search'),
        kheight,
        Expanded(
            child: FutureBuilder(
          future: getTrending(),
          builder: (context, snapshot) {
            return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return snapshot.hasData
                      ? Row(
                          children: [
                            Container(
                              width: screenWidth * 0.4,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w200${snapshot.data?[index].backdropPath}'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            kwidth15,
                            Expanded(
                                child: Text(
                              '${snapshot.data?[index].title}',
                              style:const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                           const Icon(
                              Icons.play_circle_outline,
                              color: kwhite,
                              size: 45,
                            )
                          ],
                        )
                      :const Center(
                          child: CircularProgressIndicator(
                            color: Colors.red,
                          ),
                        );
                },
                separatorBuilder: (context, index) => kheight,
                itemCount: 19);
          },
        ))
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
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.4,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: const DecorationImage(
                image: NetworkImage(imgUrl),
                fit: BoxFit.cover,
              )),
        ),
        kwidth5,
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )),
        const Icon(
          Icons.play_circle_outline,
          color: kwhite,
          size: 45,
        )
      ],
    );
  }
}
