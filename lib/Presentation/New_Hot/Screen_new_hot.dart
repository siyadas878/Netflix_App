import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/Domain/models/trending/trending_function.dart';
import 'package:netflix/Domain/models/upcoming/upcoming_function.dart';
import 'package:netflix/Presentation/New_Hot/widgets/every_ones_watching.dart';
import 'package:netflix/Presentation/New_Hot/widgets/text_icon.dart';
import '../../Domain/models/trending/result.dart';
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
              TabBarView(children: [comingSoon(context), EveryOnesWatching()])),
    );
  }

  Widget comingSoon(BuildContext context) {
    String? convertedDate;
    int? convertedMonth;
    String? stringdate;
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return FutureBuilder(
          future: getUpComing(),
          builder: (context, snapshot) {


            //  String? date = snapshot.data?[index].release_date;

            //     if (date != null) {
            //       convertedMonth = int.parse(date[5] + date[6]);
            //       convertedDate = date[8] + date[9];
            //     } else {
            //       convertedMonth = 1;
            //       convertedDate = '18';
            //     }

            //     stringdate =
            //         dateConversion(snapshot, index, convertedMonth, stringdate);


            return snapshot.hasData? Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                children: [
                   SizedBox(
                    width: 50,
                    height: 450,
                    child: Column(
                      children: [
                        Text('june',
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
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
                                    'https://image.tmdb.org/t/p/w200${snapshot.data?[index].backdropPath}',
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
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              kheight,
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      '${snapshot.data?[index].title}',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: -7,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Spacer(),
                                  TextIcon(
                                    icon: CupertinoIcons.bell_solid,
                                    title: 'Reminder',
                                  ),
                                  kwidth,
                                  TextIcon(
                                    icon: CupertinoIcons.info,
                                    title: 'Info',
                                  ),
                                  kwidth,
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
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' Filims',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Text(
                          '${snapshot.data?[index].title}',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                        kheight10,
                        Text(
                          '${snapshot.data?[index].overview}',
                          style: TextStyle(
                            fontSize: 11.7,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ):Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.red,
                                    ),
                                  );
          },
        );
      },
    );
  }

  String? dateConversion(AsyncSnapshot<List<dynamic>> snapshot, int index,
      int? converteddate, String? stringdate) {
    if (converteddate == 1) {
      stringdate = 'JAN';
    } else if (converteddate == 2) {
      stringdate = 'FEB';
    } else if (converteddate == 3) {
      stringdate = 'MAR';
    } else if (converteddate == 4) {
      stringdate = 'APL';
    } else if (converteddate == 5) {
      stringdate = 'MAY';
    } else if (converteddate == 6) {
      stringdate = 'JUN';
    } else if (converteddate == 7) {
      stringdate = 'JUL';
    } else if (converteddate == 8) {
      stringdate = 'AUG';
    } else if (converteddate == 9) {
      stringdate = 'SEP';
    } else if (converteddate == 10) {
      stringdate = 'OCT';
    } else if (converteddate == 11) {
      stringdate = 'NOV';
    } else if (converteddate == 12) {
      stringdate = 'DEC';
    }
    return stringdate;
  }
}
