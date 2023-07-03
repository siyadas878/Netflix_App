import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Search/widgets/search_idl.dart';
import 'package:netflix/Presentation/Search/widgets/search_result.dart';
import 'package:netflix/core/contants.dart';

import '../../Domain/models/search_model/search_function.dart';

const imgUrl =
    'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/1V4SPkV3bQvl85zK4FqwTzdfBs4.jpg';
const imgUrl2 =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/ygO9lowFMXWymATCrhoQXd6gCEh.jpg";

TextEditingController searchControllor = TextEditingController();
ValueNotifier searchScreenNotifier = ValueNotifier([]);

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusNode.unfocus();
      },
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ValueListenableBuilder(
            valueListenable: searchScreenNotifier,
            builder: (context, value, child) {
              return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CupertinoSearchTextField(
                  focusNode: _focusNode,
                  controller: searchControllor,
                  onChanged: (value) {
                     getimageSearchGrid(value.trim());
                     searchScreenNotifier.notifyListeners();
                  },
                  style:const TextStyle(color: Colors.white),
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  prefixIcon:const Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                  suffixIcon:const Icon(
                    CupertinoIcons.xmark_circle_fill,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    searchControllor.clear();
                  },
                ),
                kheight,
                (searchControllor.text.isEmpty)?
                const Expanded(child: SearchIdl()):
                const Expanded(child: SearchResult()),
              ],
            );
            }, 
          ),
        )),
      ),
    );
  }
}
