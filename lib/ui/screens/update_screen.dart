import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/contacts_data.dart';
import 'package:whatsapp_clone/ui/new_colors.dart';

import 'package:whatsapp_clone/colors.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  @override
  Widget build(BuildContext context) {
    final data = FirstPageData.firstPageInfo;
    return Scaffold(
      backgroundColor: myBackgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  height: 0,
                  color: myDividerColor,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 0, 8),
                  child: Text(
                    'Status',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 6, 16, 8),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'assets/profile_img/reza.jpg',
                              width: 52,
                            ),
                          ),
                          Container(
                            width: 70,
                            clipBehavior: Clip.none,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Padding(
                                  padding: EdgeInsets.only(top: 22, left: 26),
                                  child: Icon(
                                    CupertinoIcons.add_circled_solid,
                                    color: floatingActionButtonColor,
                                    size: 26,
                                  ),
                                )),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'My Status',
                            style: TextStyle(fontSize: 14),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text('Tap to add status update',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white.withOpacity(0.6)))
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: myDividerColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 2, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Channels',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Explore',
                            style: TextStyle(
                                fontSize: 12, color: floatingActionButtonColor),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                CupertinoIcons.chevron_right,
                                size: 16,
                                color: floatingActionButtonColor,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 8, 8),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'assets/profile_img/nicole.jpg',
                          width: 48,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nicole Kidman',
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(
                                width: 156,
                              ),
                              Text(
                                '8/25/24',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: floatingActionButtonColor),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.link,
                                size: 22,
                                color: Colors.white.withOpacity(0.5),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 236,
                                    child: Flexible(
                                      child: Text(
                                        overflow: TextOverflow.ellipsis,
                                        'To all my fan i gotta say that I love you so much and where ever that I go you are in my heart',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color:
                                                Colors.white.withOpacity(0.6)),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: floatingActionButtonColor),
                                    child: const Center(
                                      child: Text(
                                        '30',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            color: Colors.black),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 12, 0, 16),
                  child: Text(
                    'Find channels',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                SizedBox(
                  height: 142,
                  child: ListView.builder(
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final dataInfo = data[index];
                        return Padding(
                          padding: const EdgeInsets.only(left: 12, right: 0),
                          child: Stack(
                            children: [
                              Container(
                                width: 124,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: dividerColor)),
                              ),
                              Positioned(
                                left: 12,
                                top: 8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Image.asset(
                                            dataInfo.imageUrl,
                                            width: 56,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: -4,
                                          right: -4,
                                          child: Container(
                                            height: 28,
                                            width: 28,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.black),
                                            child: Center(
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                decoration: const BoxDecoration(
                                                    color:
                                                        floatingActionButtonColor,
                                                    shape: BoxShape.circle),
                                                child: const Icon(
                                                  CupertinoIcons.checkmark,
                                                  size: 14,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          dataInfo.firstName,
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(dataInfo.lastName,
                                            style:
                                                const TextStyle(fontSize: 12))
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        width: 100,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: floatingActionButtonColor
                                                .withOpacity(0.2)),
                                        child: const Center(
                                          child: Text('Follow'),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 120,
                      height: 36,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(25),
                          color: floatingActionButtonColor),
                      child: const Center(
                        child: Text(
                          'Explore more',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
