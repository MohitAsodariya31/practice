import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  bool swichValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomRight: Radius.circular(50)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 190),
                height: 50,
                width: 50,
                decoration: BoxDecoration(border: Border.all(color: const Color(0xffD7D9DB)), borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: const Icon(Icons.close),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40, left: 25),
                        height: 70,
                        width: 70,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(102, 157, 156, 153),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        children: const [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Dwayne Johnson",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "@Dwaynejohnson",
                            style: TextStyle(
                                color: Color.fromARGB(
                                  255,
                                  173,
                                  166,
                                  166,
                                ),
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 29, top: 30, right: 29),
                        child: const Text(
                          "Profile",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 29, top: 3),
                        child: (const Text(
                          "See my profile",
                          style: TextStyle(
                            color: Color.fromARGB(255, 147, 139, 139),
                          ),
                        )),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(padding: EdgeInsets.only(left: 130)),
                      Icon(Icons.arrow_forward),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 29, top: 30, right: 25),
                        child: const Text(
                          "Categories",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 28, top: 3),
                        child: (const Text(
                          "See categories item",
                          style: TextStyle(
                            color: Color.fromARGB(255, 147, 139, 139),
                          ),
                        )),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(padding: EdgeInsets.only(left: 98)),
                      Icon(Icons.arrow_forward),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 29, top: 30, right: 70),
                        child: const Text(
                          "Cart",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30, top: 3),
                        child: (const Text(
                          "See my cart items",
                          style: TextStyle(
                            color: Color.fromARGB(255, 147, 139, 139),
                          ),
                        )),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(padding: EdgeInsets.only(left: 110)),
                      Icon(Icons.arrow_forward),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 22, top: 30, right: 40),
                        child: const Text(
                          "Payment Card",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30, top: 3),
                        child: (const Text(
                          "See my payment card option",
                          style: TextStyle(
                            color: Color.fromARGB(255, 147, 139, 139),
                          ),
                        )),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 45),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 29, top: 30, right: 25),
                        child: const Text(
                          "Push-Notifications",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 29, top: 3, right: 40),
                        child: (const Text(
                          "Set up push notification",
                          style: TextStyle(
                            color: Color.fromARGB(255, 147, 139, 139),
                          ),
                        )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      CupertinoSwitch(
                        activeColor: Colors.amber,
                        value: swichValue,
                        onChanged: (bool? Value) {
                          setState(() {
                            swichValue = Value ?? false;
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30, right: 60),
                        child: const Text(
                          "Logout",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 29, top: 3, right: 10),
                        child: (const Text(
                          "Set up push notification",
                          style: TextStyle(
                            color: Color.fromARGB(255, 147, 139, 139),
                          ),
                        )),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 30,
                          right: 39,
                        ),
                      ),
                      Icon(Icons.login)
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
