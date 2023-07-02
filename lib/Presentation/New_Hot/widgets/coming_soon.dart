import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/Presentation/New_Hot/widgets/text_icon.dart';

import '../../../core/contants.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        children: [
          const SizedBox(
            width: 50,
            height: 450,
            child: Column(
              children: [
                Text('FEB', style: TextStyle(fontSize: 12, color: Colors.grey)),
                Text('11',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4)),
              ],
            ),
          ),
          SizedBox(
              width: size.width - 60,
              height: 450,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.network(
                              'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/mu1zFlKK7pQbGbkCHDyRRQ6RMRW.jpg',
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
                                    backgroundColor:
                                        Colors.black.withOpacity(0.5),
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
                        const Row(
                          children: [
                            Text('TALL GIRL 2',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -7)),
                            Spacer(),
                            TextIcon(
                                icon: CupertinoIcons.bell_solid,
                                title: 'Reminder'),
                            kwidth,
                            TextIcon(icon: CupertinoIcons.info, title: 'Info'),
                            kwidth
                          ],
                        )
                      ],
                    ),
                  ),
                  const Text('Coming On Friday'),
                  kheight20,
                  const Row(
                    children: [
                      Text(
                        'N',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Filims',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  const Text(
                    'Tall Girl 2',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                  kheight10,
                  const Text(
                    'Leading the lead in the school musical is a\ndream come true for Jodi, until the pressure\nsends her confidence - and her relationship ---\ninto a tailspin.',
                    style: TextStyle(fontSize: 11.7, color: Colors.grey),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
