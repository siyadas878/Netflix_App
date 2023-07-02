// import 'package:flutter/material.dart';
// import 'package:netflix/core/contants.dart';

// class VideoListItem extends StatelessWidget {
//   const VideoListItem({required this.index, super.key});
//   final int index;
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           color: Colors.accents[index % Colors.accents.length],
//         ),
//         Align(
//           alignment: Alignment.bottomLeft,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 //  <-----left Side------->
//                 CircleAvatar(
//                     radius: 23,
//                     backgroundColor: Colors.black.withOpacity(0.5),
//                     child: IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.volume_off,
//                           color: Colors.white,
//                         ))),
//                 const Spacer(),

//                 //  <-----right Side------->
//                 const Padding(
//                   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       CircleAvatar(
//                         radius: 23,
//                         backgroundImage: NetworkImage(
//                             "https://www.themoviedb.org/t/p/w220_and_h330_face/6GyzbZf1MsXfrDWTnNXrzwr6G9q.jpg"),
//                       ),
//                       kheight20,
//                       VideoActionWidget(
//                           icon: Icons.emoji_emotions, title: 'LOL'),
//                       kheight15,
//                       VideoActionWidget(icon: Icons.add, title: 'My List'),
//                       kheight15,
//                       VideoActionWidget(icon: Icons.share, title: 'Share'),
//                       kheight15,
//                       VideoActionWidget(icon: Icons.play_arrow, title: 'Play'),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

// class VideoActionWidget extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   const VideoActionWidget({
//     required this.icon,
//     required this.title,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Icon(
//           icon,
//           size: 30,
//           color: kwhite,
//         ),
//         Text(
//           title,
//           style: const TextStyle(fontSize: 14, color: kwhite),
//         ),
//       ],
//     );
//   }
// }
