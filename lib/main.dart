import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isIOS = false;

  @override
  Widget build(BuildContext context) {
    return (isIOS == false)
        ? MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: const Color(0xff54759E),
                leading: Icon(Icons.view_headline),
                title: const Text("Platform Converter"),
                actions: [
                  Switch(
                    value: isIOS,
                    onChanged: (val) {
                      setState(() {
                        isIOS = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          )
        : CupertinoApp(
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: const Text("Platform Converter"),
                trailing: CupertinoSwitch(
                  value: isIOS,
                  onChanged: (val) {
                    setState(() {
                      isIOS = val;
                    });
                  },
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoButton.filled(
                      child: Text("Open Alert Dialog"),
                      onPressed: () {
                        showCupertinoDialog(
                          context: context,
                          builder: (context) {
                            return CupertinoAlertDialog(
                              title: Text("Showing Alert Dialog"),
                              actions: <CupertinoDialogAction>[
                                CupertinoDialogAction(
                                  child: const Text("Ok"),
                                  onPressed: () {},
                                ),
                                CupertinoDialogAction(
                                  child: const Text("Dismiss"),
                                  onPressed: (){},
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
