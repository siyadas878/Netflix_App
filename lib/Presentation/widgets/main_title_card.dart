import 'package:flutter/cupertino.dart';

import '../../core/contants.dart';
import 'main_card.dart';
import 'main_title.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  final String imageName;
  const MainTitleCard({
    required this.imageName,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title,),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: List.generate(7, (index){
              return Padding(
                padding: EdgeInsets.only(right: 8),
                child: MainCard(imgString: imageName,));
            }),
          ),
        )
      ],
    );
  }
}