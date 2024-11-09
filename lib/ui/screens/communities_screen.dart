import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/new_colors.dart';

import 'package:whatsapp_clone/colors.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Divider(
                        height: 0,
                        color: dividerColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32, bottom: 24),
                        child: Image.asset(
                          'assets/communities.png',
                          width: 146,
                        ),
                      ),
                      const Text(
                        'Stay connected with a community',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 24, right: 24),
                        child: Text(
                          "Communities bring members together in topic-based groups, and make it easy to get admin announcements. Any communitiy you're added to will appear here.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12, height: 1.6),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'See example communities',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: floatingActionButtonColor,
                                    height: -0.3),
                              )),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 14),
                            child: Icon(
                              CupertinoIcons.chevron_right,
                              size: 10,
                              color: floatingActionButtonColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 36,
                          width: MediaQuery.of(context).size.width - 56,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: floatingActionButtonColor),
                          child: const Center(
                              child: Text(
                            'Start your community',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
