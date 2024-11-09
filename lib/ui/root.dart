import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/new_colors.dart';
import 'package:whatsapp_clone/ui/screens/bottom_navigation.dart';
import 'package:whatsapp_clone/ui/screens/calls_screen.dart';
import 'package:whatsapp_clone/ui/screens/communities_screen.dart';
import 'package:whatsapp_clone/ui/screens/new_mobile_screen.dart';
import 'package:whatsapp_clone/ui/screens/update_screen.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

const int mobileScreenIndex = 0;
const int updateScreenIndex = 1;
const int communityScreenIndex = 2;
const int callScreenIndex = 3;

class _RootState extends State<Root> {
  int selectedIndex = mobileScreenIndex;
  final PageController _pageController = PageController();

  final List<int> _history = [];

  final GlobalKey<NavigatorState> _chatKey = GlobalKey();
  final GlobalKey<NavigatorState> _updateKey = GlobalKey();
  final GlobalKey<NavigatorState> _communityKey = GlobalKey();
  final GlobalKey<NavigatorState> _callKey = GlobalKey();

  late final map = {
    mobileScreenIndex: _chatKey,
    updateScreenIndex: _updateKey,
    communityScreenIndex: _communityKey,
    callScreenIndex: _callKey
  };

  Future<bool> _onWillPop() async {
    final NavigatorState currentSelectedTapNavigatorState =
        map[selectedIndex]!.currentState!;
    if (currentSelectedTapNavigatorState.canPop()) {
      currentSelectedTapNavigatorState.pop();
      return false;
    } else if (_history.isNotEmpty) {
      setState(() {
        selectedIndex == _history.last;
        _history.removeLast();
      });
      return false;
    }
    return true;
  }

  final List<String> _bottomNavigationItems = [
    'Chats',
    'Update',
    'Communities',
    'Calls'
  ];
  bool isButtonVisible = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(_bottomNavigationItems[selectedIndex]),
          actions: [
            if (selectedIndex == 0) ...[
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.camera)),
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.ellipsis_vertical)),
            ],
            if (selectedIndex == 1) ...[
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.camera)),
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.ellipsis_vertical)),
            ],
            if (selectedIndex == 2) ...[
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.camera)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.ellipsis_vertical)),
            ],
            if (selectedIndex == 3) ...[
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.camera)),
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.ellipsis_vertical)),
            ]
          ],
        ),
        floatingActionButton: _buildFloatingActionButton(selectedIndex),
        bottomNavigationBar: BottomNavigation(
          onTap: (int index) {
            setState(() {
              _history.remove(selectedIndex);
              _history.add(selectedIndex);
              selectedIndex = index;
              _pageController.jumpToPage(index);
            });
          },
          selectedIndex: selectedIndex,
        ),
        body: PageView.builder(
          physics: const BouncingScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              isButtonVisible = false;
            });
            Future.delayed(const Duration(milliseconds: 200), () {
              setState(() {
                selectedIndex = index;
                isButtonVisible = true;
              });
            });
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            switch (index) {
              case mobileScreenIndex:
                return _navigator(
                    _chatKey, mobileScreenIndex, const NewMobileScreenLayout());
              case updateScreenIndex:
                return _navigator(
                    _updateKey, updateScreenIndex, const UpdateScreen());
              case communityScreenIndex:
                return _navigator(_communityKey, communityScreenIndex,
                    const CommunityScreen());
              case callScreenIndex:
                return _navigator(
                    _callKey, callScreenIndex, const CallScreen());
              default:
                return Container();
            }
          },
        ),
      ),
    );
  }

  Widget _navigator(GlobalKey key, int index, Widget child) {
    return Navigator(
      key: key,
      onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (context) => Offstage(
                offstage: selectedIndex != index,
                child: child,
              )),
    );
  }

  Widget? _buildFloatingActionButton(int index) {
    switch (index) {
      case 0:
        return _buildChatsFloatingActionButton();
      case 1:
        return _buildUpdateFloatingActionButton();

      case 2:
        return Container();
      case 3:
        return _buildCallsFloatingActionButton();
    }
    return null;
  }

  InkWell _buildCallsFloatingActionButton() {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            color: floatingActionButtonColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(14)),
        child: const Padding(
          padding: EdgeInsets.only(top: 4),
          child: Icon(
            Icons.add_ic_call_rounded,
            color: Colors.black,
            size: 24,
          ),
        ),
      ),
    );
  }

  Column _buildUpdateFloatingActionButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          bottom: isButtonVisible ? 68 : 0,
          right: 8,
          child: AnimatedSlide(
            duration: const Duration(milliseconds: 300),
            offset: isButtonVisible ? Offset.zero : const Offset(0, 2),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: isButtonVisible ? 1 : 0,
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white.withOpacity(0.14)),
                child: const Center(
                  child: Icon(
                    Icons.create,
                    size: 22,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: floatingActionButtonColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(14)),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 2),
              child: Icon(
                CupertinoIcons.camera_fill,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildChatsFloatingActionButton() {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            color: floatingActionButtonColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(14)),
        child: Transform.flip(
          flipY: true,
          flipX: true,
          child: const Padding(
            padding: EdgeInsets.only(top: 4),
            child: Icon(
              Icons.add_comment_rounded,
              color: Colors.black,
              size: 22,
            ),
          ),
        ),
      ),
    );
  }
}
