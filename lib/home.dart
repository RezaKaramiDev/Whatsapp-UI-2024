// import 'package:flutter/material.dart';
// import 'package:whatsapp_clone/new/root.dart';
// import 'package:whatsapp_clone/old/screens/mobile_layout_screen.dart';
// import 'package:whatsapp_clone/old/screens/web_layout_screen.dart';
// import 'package:whatsapp_clone/old/utils/responsive_layout.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Welcome'),
//       ),
//       backgroundColor: const Color.fromARGB(255, 1, 18, 31),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             VersionOptions(
//               text: 'New Version',
//               onTap: () {
//                 Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => const Root()));
//               },
//               borderRadius: BorderRadius.circular(16),
//             ),
//             const SizedBox(
//               height: 48,
//             ),
//             VersionOptions(
//               text: 'Old Version',
//               onTap: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => const ResponsiveLayout(
//                         mobileScreenLayout: MobileLayoutScreen(),
//                         webScreenLayout: WebLayoutScreen())));
//               },
//               borderRadius: BorderRadius.circular(16),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class VersionOptions extends StatelessWidget {
//   const VersionOptions({
//     super.key,
//     required this.text,
//     required this.onTap,
//     required this.borderRadius,
//   });

//   final String text;
//   final GestureTapCallback onTap;
//   final BorderRadius borderRadius;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       borderRadius: borderRadius,
//       onTap: onTap,
//       child: Container(
//         width: 200,
//         height: 150,
//         decoration: BoxDecoration(
//             borderRadius: borderRadius,
//             gradient: const LinearGradient(colors: [
//               Color.fromARGB(255, 12, 63, 104),
//               Color.fromARGB(255, 5, 29, 49),
//             ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.blue.withOpacity(0.15),
//                 blurRadius: 12,
//               )
//             ]),
//         child: Center(
//             child: Text(
//           text,
//           style: TextStyle(
//               color: Colors.tealAccent.withOpacity(0.7),
//               fontWeight: FontWeight.bold,
//               fontSize: 16),
//         )),
//       ),
//     );
//   }
// }
