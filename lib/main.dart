import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/Presentation/main_page/widgets/Screen_main.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NetFlix',
      theme:
      ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
        primarySwatch: Colors.blue,
        // ignore: deprecated_member_use
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white)
        )
      ),
      home: ScreenMainPage(),
    );
  }
}