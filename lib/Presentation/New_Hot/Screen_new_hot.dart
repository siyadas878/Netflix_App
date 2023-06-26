import 'package:flutter/material.dart';
import 'package:netflix/Presentation/New_Hot/widgets/coming_soon.dart';
import 'package:netflix/Presentation/New_Hot/widgets/every_ones_watching.dart';
import 'package:netflix/Presentation/New_Hot/widgets/text_icon.dart';
import 'package:netflix/Presentation/New_Hot/widgets/text_icon_everyone.dart';
import '../../core/contants.dart';

class ScreenNewHot extends StatelessWidget {
  const ScreenNewHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: const Text(
                'New & Hot',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                  size: 30,
                ),
                kwidth,
                Container(
                  width: 25,
                  height: 20,
                  color: Colors.blue,
                ),
                kwidth,
              ],
              bottom: TabBar(
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  tabs: const [
                    Tab(
                      text: '🍟 Coming Soon',
                    ),
                    Tab(text: '👀 Everyones Watching ')
                  ]),
            ),
          ),
          body:
              TabBarView(children: [comingSoon(context), EveryonesWatching()])),
    );
  }

  Widget comingSoon(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ComingSoon(size: size);
      },
    );
  }

  Widget EveryonesWatching() {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
      return EveryOnesWatching();
    },);
  }
}

