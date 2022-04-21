import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../modals/chat_modal.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(
            top: (isIOS) ? 100 : 20, left: 15, right: 15, bottom: (isIOS) ? 40 : 20),
        child: Column(
          children: l1
              .map((e) => GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(80.0),
                            ),
                          ),
                          builder: (context) {
                            return Container(
                              height: 400,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 40),
                                  CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage(e.image),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    e.name,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "+91 6354141344",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey),
                                  ),
                                  SizedBox(height: 30),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff54759E),
                                      minimumSize: Size(300, 40),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Send Message",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff54759E),
                                      minimumSize: Size(300, 40),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 55,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(e.image),
                                radius: 30,
                              ),
                              const Spacer(),
                              Container(
                                height: 60,
                                width: 210,
                                // color: Colors.green,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.name,
                                      style: const TextStyle(
                                          fontSize: 17,
                                          color: CupertinoColors.black),
                                    ),
                                    Text(
                                      e.message,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          color: CupertinoColors.inactiveGray),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                              Container(
                                width: 70,
                                // color: Colors.blue,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  e.time,
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
