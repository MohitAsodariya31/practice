import 'dart:math';

import 'package:flutter/material.dart';

abstract class MyApp extends StatelessWidget {
  const MyApp({super.key});
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  dynamic colorCode = 0xff000000;
  Random random = Random();

  int index = 0;
  List colorList = [];

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void generateColor() {
    colorCode = random.nextInt(0xffffffff);
    index++;
    colorList.add(colorCode);
    setState(() {});
  }

  void changeColor() {
    if (index != 0) {
      index--;
    }
    setState(() {});
  }

  @override
  void initState() {
    colorList.add(colorCode);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,

                onChanged: (value) {
                  debugPrint("onChanged ------------>> $value");
                  setState(() {});
                },
                onTap: () {
                  debugPrint("onTap ------------>> ");
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                autocorrect: false,
                autofocus: false,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                minLines: 1,
                // maxLines: 10,
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.multiline,
                // maxLength: 20,
                // obscureText: true,
                textAlign: TextAlign.start,
                // enabled: false,
                textInputAction: TextInputAction.next,
                // obscuringCharacter: ">",
                decoration: InputDecoration(
                  // hintText: "Enter Email",
                  fillColor: Colors.black,
                  // contentPadding: EdgeInsets.all(20),
                  // isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.yellow),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  // floatingLabelStyle: TextStyle(color: Colors.red),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  labelText: "Email",
                  suffixIcon: const Icon(Icons.search),
                  suffixIconColor: Colors.red,
                  focusColor: Colors.pinkAccent,
                  icon: const Icon(Icons.anchor_outlined),
                  iconColor: Colors.red,
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: passwordController,

                onChanged: (value) {
                  debugPrint("onChanged ------------>> $value");
                  setState(() {});
                },
                onTap: () {
                  debugPrint("onTap ------------>> ");
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  } else if (value.length != 4) {
                    return 'Please enter 4 Word';
                  }

                  return null;
                },
                autocorrect: false,
                autofocus: false,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                minLines: 1,
                // maxLines: 10,
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.multiline,
                // maxLength: 20,
                // obscureText: true,
                textAlign: TextAlign.start,
                // enabled: false,
                textInputAction: TextInputAction.next,
                // obscuringCharacter: ">",
                decoration: InputDecoration(
                  // hintText: "Enter Email",
                  fillColor: Colors.black,
                  // contentPadding: EdgeInsets.all(20),
                  // isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.yellow),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  // floatingLabelStyle: TextStyle(color: Colors.red),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  labelText: "Password",
                  suffixIcon: const Icon(Icons.search),
                  suffixIconColor: Colors.red,
                  focusColor: Colors.pinkAccent,
                  icon: const Icon(Icons.anchor_outlined),
                  iconColor: Colors.red,
                ),
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  if (validter()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     FloatingActionButton(
              //       child: const Icon(Icons.add),
              //       onPressed: () {
              //         generateColor();
              //       },
              //     ),
              //     FloatingActionButton(
              //       child: const Icon(Icons.remove),
              //       onPressed: () {
              //         changeColor();
              //       },
              //     ),
              //     Text(
              //       "$index",
              //       style: const TextStyle(
              //         fontSize: 20,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  bool validter() {
    if (emailController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(' Data'),
        ),
      );
      return false;
    }

    return true;
  }
}
