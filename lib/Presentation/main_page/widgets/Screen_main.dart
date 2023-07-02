import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Fast_Laugh/Screen_fast_laugh.dart';
import 'package:netflix/Presentation/New_Hot/Screen_new_hot.dart';
import 'package:netflix/Presentation/Search/Screen_search.dart';
import 'package:netflix/Presentation/downloads/widgets/Screen_downloads.dart';
import 'package:netflix/Presentation/home/Screen_home.dart';
import 'package:netflix/Presentation/main_page/widgets/bottom_Navigation.dart';
import 'package:netflix/core/colors/colors.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final pages = [
    ScreenHome(),
    ScreenNewHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return pages[index];
        },
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
