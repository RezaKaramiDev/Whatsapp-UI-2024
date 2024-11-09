import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/new_colors.dart';
import 'package:whatsapp_clone/ui/root.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {super.key, required this.onTap, required this.selectedIndex});

  final Function(int index) onTap;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myBackgroundColor,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavigationItem(
            activeIcon: Transform.flip(
              flipY: true,
              child: const Icon(
                Icons.chat,
                color: Colors.white,
                size: 20,
              ),
            ),
            inactiveIcon: Transform.flip(
              flipY: true,
              child: const Icon(
                Icons.chat_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
            isActive: selectedIndex == mobileScreenIndex,
            title: 'Chats',
            color: floatingActionButtonColor.withOpacity(0.3),
            onTap: () {
              onTap(mobileScreenIndex);
            },
          ),
          BottomNavigationItem(
            activeIcon: const Icon(
              Icons.auto_awesome_sharp,
              size: 20,
            ),
            inactiveIcon: const Icon(
              Icons.auto_awesome_outlined,
              size: 20,
            ),
            isActive: selectedIndex == updateScreenIndex,
            title: "Update",
            color: floatingActionButtonColor.withOpacity(0.3),
            onTap: () {
              onTap(updateScreenIndex);
            },
          ),
          BottomNavigationItem(
            activeIcon: const Icon(
              CupertinoIcons.person_3_fill,
              size: 24,
            ),
            inactiveIcon: const Icon(
              CupertinoIcons.person_3,
              size: 24,
            ),
            isActive: selectedIndex == communityScreenIndex,
            title: 'Communities',
            color: floatingActionButtonColor.withOpacity(0.3),
            onTap: () {
              onTap(communityScreenIndex);
            },
          ),
          BottomNavigationItem(
            activeIcon: const Icon(
              Icons.call,
              size: 20,
            ),
            inactiveIcon: const Icon(
              Icons.call_outlined,
              size: 20,
            ),
            isActive: selectedIndex == callScreenIndex,
            title: 'Calls',
            color: floatingActionButtonColor.withOpacity(0.3),
            onTap: () {
              onTap(callScreenIndex);
            },
          )
        ],
      ),
    );
  }
}

class BottomNavigationItem extends StatefulWidget {
  final Widget activeIcon;
  final Widget inactiveIcon;
  final Function() onTap;
  final bool isActive;
  final String title;
  final Color color;

  const BottomNavigationItem({
    super.key,
    required this.activeIcon,
    required this.inactiveIcon,
    required this.title,
    required this.color,
    required this.isActive,
    required this.onTap,
  });

  @override
  State<BottomNavigationItem> createState() => _BottomNavigationItemState();
}

class _BottomNavigationItemState extends State<BottomNavigationItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 28,
              width: widget.isActive ? 64 : 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: widget.isActive
                    ? floatingActionButtonColor.withOpacity(0.3)
                    : null,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Center(
                  child:
                      widget.isActive ? widget.activeIcon : widget.inactiveIcon,
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              widget.title,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
