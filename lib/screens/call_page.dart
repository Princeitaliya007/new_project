import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../modals/chat_modal.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(
            top: (isIOS) ? 100:20, left: 15, right: 15, bottom: (isIOS)? 40:20),
        child: Column(
          children: l1
              .map((e) => Column(
            children: [
              Container(
                height: 55,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                      NetworkImage(e.image),
                      radius: 30,
                    ),
                    const Spacer(),
                    Container(
                      height: 60,
                      width: 210,
                      // color: Colors.green,
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .spaceAround,
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.name,
                            style: const TextStyle(
                                fontSize: 17,
                                color: CupertinoColors
                                    .black),
                          ),
                          Text(
                            e.calltime,
                            style: const TextStyle(
                                fontSize: 14,
                                color: CupertinoColors
                                    .inactiveGray),
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
                      child: Icon(
                        Icons.call,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ))
              .toList(),
        ),
      ),
    );
  }
}
