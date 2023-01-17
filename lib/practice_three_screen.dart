import 'package:flutter/material.dart';

class FontScreen extends StatefulWidget {
  const FontScreen({super.key});

  @override
  State<FontScreen> createState() => _FontScreenState();
}

TextEditingController emailController = TextEditingController();

class _FontScreenState extends State<FontScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                debugPrint("onChanged===============??$value");
                setState(() {});
              },
              onTap: () {
                debugPrint("onTap=================??");
              },
              controller: emailController,
              autocorrect: false,
              autofocus: true,
              cursorRadius: const Radius.circular(23),
              decoration: InputDecoration(
                  labelText: "meet",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.next_week_outlined),
                  suffixIcon: const Icon(Icons.accessibility_new_rounded),
                  prefix: const Text("shoping"),
                  suffix: const Text("bhoot")),
            ),
            Text(emailController.text)
          ],
        ),
      ),
    );
  }
}
