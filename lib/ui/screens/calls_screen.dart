import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/contacts_data.dart';
import 'package:whatsapp_clone/ui/new_colors.dart';
import 'package:whatsapp_clone/colors.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = FirstPageData.callContactInfo;
    return Scaffold(
      backgroundColor: myBackgroundColor,
      body: Column(
        children: [
          const Divider(
            height: 0,
            color: dividerColor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Favorites'),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 28),
                    child: Row(
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: floatingActionButtonColor),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 2),
                              child: Icon(
                                CupertinoIcons.heart_fill,
                                color: Colors.black,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text('Add to Favorites')
                      ],
                    ),
                  ),
                  const Text('Recent'),
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: data.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              final callInfo = data[index];
                              return Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                child: SizedBox(
                                  height: 45,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(
                                          callInfo.imageUrl,
                                          width: 40,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  callInfo.firstName,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                      color: callInfo
                                                          .contactColor),
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  callInfo.lastName,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                      color: callInfo
                                                          .contactColor),
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  callInfo.callNumber,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color:
                                                          callInfo.contactColor,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  callInfo.inOrOutTypeIcon,
                                                  size: 16,
                                                  color: callInfo.callColor,
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  callInfo.date,
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.7)),
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                Text(callInfo.time,
                                                    style: TextStyle(
                                                        color: Colors.white
                                                            .withOpacity(0.7)))
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(top: 14),
                                          child: Icon(
                                            callInfo.typeCallIcon,
                                            size: 22,
                                          ))
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
