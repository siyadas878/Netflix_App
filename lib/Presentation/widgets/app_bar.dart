import 'package:flutter/material.dart';
import 'package:netflix/core/contants.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(
          title,
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
        ),
        Spacer(),
        Icon(
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
        kwidth
      ],
    );
  }
}
