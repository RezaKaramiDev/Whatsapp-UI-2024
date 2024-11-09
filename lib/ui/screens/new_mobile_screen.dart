import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/contacts_data.dart';
import 'package:whatsapp_clone/ui/new_colors.dart';
import 'package:whatsapp_clone/ui/screens/mobile_chat_screen.dart';

class NewMobileScreenLayout extends StatefulWidget {
  const NewMobileScreenLayout({super.key});

  @override
  State<NewMobileScreenLayout> createState() => _NewMobileScreenLayoutState();
}

class _NewMobileScreenLayoutState extends State<NewMobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    final data = FirstPageData.firstPageInfo;
    return Scaffold(
      backgroundColor: myBackgroundColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                const Divider(
                  color: myDividerColor,
                  height: 0,
                ),
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
                            final dataInfo = data[index];
                            return InkWell(
                              onTap: () {
                                Navigator.of(context, rootNavigator: true).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MobileChatScreen()));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: SizedBox(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(
                                          dataInfo.imageUrl,
                                          width: 52,
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
                                                  dataInfo.firstName,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16),
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  dataInfo.lastName,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              dataInfo.message,
                                              style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.7)),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 14),
                                        child: Text(
                                          dataInfo.date,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white
                                                  .withOpacity(0.7)),
                                        ),
                                      )
                                    ],
                                  ),
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
        ],
      ),
    );
  }
}
