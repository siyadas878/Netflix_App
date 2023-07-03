import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix/Domain/models/popular_result_model/popular_function.dart';
import 'package:netflix/Presentation/widgets/app_bar.dart';
import 'package:netflix/core/contants.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final WidgetList = [const _smartDownloads(), Section2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: SafeArea(
                child: AppBarWidget(
              title: 'Downloads',
            ))),
        body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return WidgetList[index];
          },
          itemCount: WidgetList.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
        ));
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text(
          'Indroducing Downloads For You',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'We will download a personilised selection of\nmovies and shows for you, So there is\nalways something to watch on your\ndevice.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        Container(
          height: size.height * 0.5,
          width: size.width,
          color: Kblack,
          child: FutureBuilder(
            future: getImagePopular(),
            builder: (context, snapshot) {
              // String? imagepath = snapshot.data?[18].posterPath;
              return Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 130,
                    backgroundColor: Colors.grey.withOpacity(0.5),
                  ),
                  DownloadsImage(
                    margin: const EdgeInsets.only(right: 150, bottom: 20),
                    imageList:
                        'https://image.tmdb.org/t/p/w200${snapshot.data?[3].posterPath}',
                    angle: -8,
                    size: Size(size.width * 0.34, size.width * 0.55),
                  ),
                  DownloadsImage(
                    margin: const EdgeInsets.only(left: 150, bottom: 20),
                    imageList:
                        'https://image.tmdb.org/t/p/w200${snapshot.data?[11].posterPath}',
                    angle: 8,
                    size: Size(size.width * 0.34, size.width * 0.55),
                  ),
                  DownloadsImage(
                    margin: const EdgeInsets.only(right: 0),
                    imageList:
                        'https://image.tmdb.org/t/p/w200${snapshot.data?[19].posterPath}',
                    size: Size(size.width * 0.39, size.width * 0.59),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: MaterialButton(
            minWidth: double.infinity,
            onPressed: () {},
            color: kbuttonBlue,
            child: const Text(
              'Set Up',
              style: TextStyle(
                  color: kwhite, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        MaterialButton(
          onPressed: () {},
          color: kbuttonWhite,
          child: const Text(
            'See what you can download',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class _smartDownloads extends StatelessWidget {
  const _smartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: kwhite,
        ),
        kwidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class DownloadsImage extends StatelessWidget {
  const DownloadsImage(
      {super.key,
      this.angle = 0,
      required this.margin,
      required this.imageList,
      required this.size});

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: angle * pi / 100,
      child: Container(
        margin: margin,
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageList),
            )),
      ),
    );
  }
}
