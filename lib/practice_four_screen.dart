import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 15),
            Icon(Icons.search),
            SizedBox(width: 10),
            Icon(Icons.more_vert_rounded),
            SizedBox(width: 10),
          ],
          title: const Text("whatsApp"),
          toolbarHeight: 70,
          elevation: 10,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.cyan,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.brown,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueGrey,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.limeAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
