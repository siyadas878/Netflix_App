import 'package:flutter/material.dart';

import '../../../core/contants.dart';

class SearchTitle extends StatelessWidget {
  final String title;
  const SearchTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: kwhite, fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
