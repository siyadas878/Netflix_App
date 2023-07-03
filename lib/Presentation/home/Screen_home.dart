import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/Presentation/home/widgets/number_cards.dart';
import 'package:netflix/Presentation/widgets/background_card.dart';
import 'package:netflix/core/contants.dart';
import '../widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder<bool>(
          valueListenable: scrollNotifier,
          builder: (context, value, child) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value =
                        true; // Set value to false when scrolling forward
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: const [
                        BackgroundCard(),
                        kheight,
                        Column(
                          children: [
                            Released(),
                            kheight,
                            Trending(),
                            kheight,
                            NumberCard(),
                            Dramas(),
                            kheight,
                            SouthIndian()
                          ],
                        ),
                      ],
                    ),
                    if (scrollNotifier.value ==
                        true) // Show the red container if value is true or in the normal stage
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          color: Colors.black.withOpacity(0.5),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    'https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  kwidth,
                                  Container(
                                    width: 25,
                                    height: 25,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'TV Shows',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  Text('Movies',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14)),
                                  Text('Categories',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  final String title;
  final IconData icon;
  const PlayButton({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhite)),
        icon: Icon(
          icon,
          color: Colors.black,
          size: 25,
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ));
  }
}
