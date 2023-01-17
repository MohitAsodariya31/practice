import 'package:flutter/material.dart';

class BuilderScreen extends StatefulWidget {
  const BuilderScreen({Key? key}) : super(key: key);

  @override
  State<BuilderScreen> createState() => _BuilderScreenState();
}

class _BuilderScreenState extends State<BuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grid View")),
      body: GridView.builder(
        itemCount: 9,
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          mainAxisExtent: 80,
        ),
        itemBuilder: (context, index) => Container(),
      ),
    );
  }
}
