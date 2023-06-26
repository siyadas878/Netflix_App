import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Search/widgets/search_idl.dart';
import 'package:netflix/Presentation/Search/widgets/search_result.dart';
import 'package:netflix/core/contants.dart';

const imgUrl='https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/1V4SPkV3bQvl85zK4FqwTzdfBs4.jpg';
const imgUrl2="https://www.themoviedb.org/t/p/w220_and_h330_face/ygO9lowFMXWymATCrhoQXd6gCEh.jpg";

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              style: TextStyle(color: Colors.white),
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: Icon(CupertinoIcons.search,color: Colors.grey,),
              suffixIcon: Icon(CupertinoIcons.xmark_circle_fill,color: Colors.grey,),
            ),
            kheight,
            // Expanded(child: SearchIdl()),
            Expanded(child: SearchResult()),
          ],
        ),
      )),
    );
  }
}