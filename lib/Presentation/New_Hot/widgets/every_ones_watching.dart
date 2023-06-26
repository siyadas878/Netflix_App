import 'package:flutter/material.dart';
import 'package:netflix/Presentation/New_Hot/widgets/text_icon_everyone.dart';

import '../../../core/contants.dart';

class EveryOnesWatching extends StatelessWidget {
  const EveryOnesWatching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5),
      child: SizedBox(
        width: double.infinity,
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Friends',
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: 2),
            ),
            kheight10,
            Text(
              'This hit silicom follows the merry disadventures of six\n20- somethings pals as they navigate the pitfalls of\nwork, life and love in 1990s Manhattan.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            kheight20,
            Stack(
              children: [
                Image.network(
                  'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/u6bGwwMgQhcqQJKHASwN4PEcYyj.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.black.withOpacity(0.5),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.volume_off,
                              size: 15,
                              color: Colors.white,
                            ))),
                  ),
                )
              ],
            ),
            kheight,
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                children: [
                  Text('LOST\nIN\nSPACE',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15,letterSpacing: 10),),
                  Spacer(),
                  TextIconEveryOne(icon: Icons.share, title: 'Share'),
                  kwidth,
                  TextIconEveryOne(icon: Icons.add, title: 'My List'),
                  kwidth,
                  TextIconEveryOne(icon: Icons.play_arrow, title: 'Play'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}