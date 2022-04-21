import 'package:demo_project/modals/chat_modal.dart';
import 'package:demo_project/screens/call_page.dart';
import 'package:demo_project/screens/chat_page.dart';
import 'package:demo_project/screens/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawers/ios_drawer.dart';

void main() {
  runApp(const MyApp());
}

bool isIOS = false;
int _currentstep = 0;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _isdrawer = GlobalKey<ScaffoldState>();
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return (isIOS == false)
        ? DefaultTabController(
            initialIndex: 0,
            length: 3,
            child: MaterialApp(
              theme: ThemeData(primaryColor: Color(0xff54759E)),
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                floatingActionButton: Builder(builder: (context) {
                  return FloatingActionButton(
                    backgroundColor: const Color(0xff54759E),
                    child: const Icon(Icons.add),
                    onPressed: () async {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              child: Container(
                                height: 450,
                                width: 300,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Stepper(
                                      currentStep: _currentstep,
                                      steps: [
                                        Step(
                                          title: Text("PROFILE PHOTO"),
                                          subtitle: Text("Add profile photo"),
                                          content: Stack(
                                            children: [
                                              CircleAvatar(
                                                radius: 40,
                                                backgroundImage: NetworkImage(l1[4].image),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(55),
                                                child: Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blueAccent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          isActive: (_currentstep >= 0) ? true : false,
                                        ),
                                        Step(
                                          title: Text("NAME"),
                                          subtitle: Text("Enter name"),
                                          content: Container(
                                            width: 250,
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: "Hunk Gabharu Jawan",
                                              ),
                                            ),
                                          ),
                                          isActive: (_currentstep >= 1) ? true : false,

                                        ),
                                        Step(
                                          title: Text("DISCRIPTION"),
                                          subtitle: Text("Enter discription"),
                                          content: Container(
                                            width: 250,
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: "I throwed my phone",
                                              ),
                                            ),
                                          ),
                                          isActive: (_currentstep >= 2) ? true : false,
                                        ),
                                      ],
                                      controlsBuilder: (BuildContext context,
                                          ControlsDetails details) {
                                        return Row(
                                          children: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: const Color(0xff54759E),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  if (_currentstep < 2) {
                                                    _currentstep++;
                                                  }
                                                });
                                              },
                                              child: const Text('CONTINUE'),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (_currentstep > 0) {
                                                    _currentstep--;
                                                  }
                                                });
                                              },
                                              child: Text('CANCEL', style: TextStyle(color: Colors.grey),),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                  );
                }),
                appBar: AppBar(
                  backgroundColor: const Color(0xff54759E),
                  leading: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      _isdrawer.currentState!.openDrawer();
                    },
                  ),
                  title: const Text("Platform Converter"),
                  actions: [
                    Switch(
                      value: isIOS,
                      onChanged: (val) {
                        setState(() {
                          isIOS = val;
                        });
                      },
                      inactiveThumbImage:
                          const AssetImage("assets/images/icons/android.png"),
                    ),
                  ],
                  bottom: const TabBar(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    indicatorColor: Colors.white,
                    tabs: <Widget>[
                      Tab(
                        text: "CHATS",
                      ),
                      Tab(
                        text: "CALLS",
                      ),
                      Tab(
                        text: "SETTINGS",
                      ),
                    ],
                  ),
                ),
                key: _isdrawer,
                drawer: Drawer(
                  child: Column(
                    children: [
                      const UserAccountsDrawerHeader(
                        accountName: Text("Prince Italiya"),
                        accountEmail: Text("+91 6354141344"),
                        currentAccountPicture: CircleAvatar(
                            child: Text("P"), backgroundColor: Colors.white),
                      ),
                      Column(
                        children: drawerlist.entries
                            .map(
                              (e) => InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 50,
                                  width: double.infinity,
                                  // color: Colors.green,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      e.key,
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            e.value,
                                            style: TextStyle(fontSize: 17),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
                body: const TabBarView(
                  children: [
                    ChatPage(),
                    CallPage(),
                    SettingPage(),
                  ],
                ),
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                leading: Builder(
                  builder: (context) => CupertinoButton(
                    child: const Icon(CupertinoIcons.line_horizontal_3),
                    onPressed: () {
                      showCupertinoDialog(
                          context: context,
                          builder: (context) => const MyDrawer());
                    },
                  ),
                ),
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
              child: Stack(
                children: [
                  IndexedStack(
                    index: _currentindex,
                    children: const [
                      ChatPage(),
                      CallPage(),
                      SettingPage(),
                    ],
                  ),
                  Column(
                    children: [
                      Spacer(),
                      CupertinoTabBar(
                        currentIndex: _currentindex,
                        onTap: (val) {
                          setState(() {
                            _currentindex = val;
                          });
                        },
                        items: const <BottomNavigationBarItem>[
                          BottomNavigationBarItem(
                              icon: Icon(CupertinoIcons.chat_bubble_2),
                              label: "Chats"),
                          BottomNavigationBarItem(
                              icon: Icon(CupertinoIcons.phone), label: "Calls"),
                          BottomNavigationBarItem(
                              icon: Icon(CupertinoIcons.settings),
                              label: "Settings"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}

// Builder(
//   builder: (context) => Center(
//     child: CupertinoButton.filled(
//       child: const Text("Open Alert Dialog"),
//       onPressed: () {
//         showCupertinoDialog(
//           context: context,
//           builder: (context) {
//             return CupertinoAlertDialog(
//               title: const Text("Showing Alert Dialog"),
//               actions: <CupertinoDialogAction>[
//                 CupertinoDialogAction(
//                   child: const Text("Ok"),
//                   onPressed: () {},
//                 ),
//                 CupertinoDialogAction(
//                   child: const Text("Dismiss"),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 ),
//               ],
//             );
//           },
//         );
//       },
//     ),
//   ),
// ),
