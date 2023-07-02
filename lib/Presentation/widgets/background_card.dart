import 'package:flutter/material.dart';

import '../../core/contants.dart';
import '../home/Screen_home.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vQiryp6LioFxQThywxbC6TuoDjy.jpg'))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: kwhite,
                    ),
                    Text('My List')
                  ],
                ),
                PlayButton(icon: Icons.play_arrow, title: 'Play'),
                Column(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: kwhite,
                    ),
                    Text('Info')
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
