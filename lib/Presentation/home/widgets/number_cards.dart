import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({required this.index,super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              height: 150,
              width: 40,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.themoviedb.org/t/p/w220_and_h330_face/A7vhdyGrpPMKXsuFBZzxmave94F.jpg'))),
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: -26,
          child: BorderedText(
            strokeWidth: 6.0,
            strokeColor: Colors.grey,
            child: Text('${index+1}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
              fontSize: 120,decoration: TextDecoration.none,decorationColor: Colors.black
            ),),
          ),
        )
      ],
    );
  }
}