import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/root.dart';
import 'package:whatsapp_clone/ui/screens/calls_screen.dart';
import 'package:whatsapp_clone/ui/screens/communities_screen.dart';
import 'package:whatsapp_clone/ui/screens/new_mobile_screen.dart';
import 'package:whatsapp_clone/ui/screens/update_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<String> _bottomNavigationItems = [
    'Chats',
    'Update',
    'Communities',
    'Calls'
  ];
  int selectedIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(_bottomNavigationItems[selectedIndex]),
          actions: [
            if (selectedIndex == 0)
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.camera)),
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
            IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.ellipsis_vertical)),
            if (selectedIndex == 1)
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.camera)),
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
            IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.ellipsis_vertical)),
            if (selectedIndex == 2)
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.camera)),
            IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.ellipsis_vertical)),
            if (selectedIndex == 3)
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.camera)),
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
            IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.ellipsis_vertical)),
          ],
        ),
        bottomNavigationBar: const Root(),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          children: const [
            Center(
              child: NewMobileScreenLayout(),
            ),
            Center(
              child: UpdateScreen(),
            ),
            Center(
              child: CommunityScreen(),
            ),
            Center(
              child: CallScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
