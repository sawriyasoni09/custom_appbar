import 'package:flutter/material.dart';
import 'package:custom_appbar/custom_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar.appBar(
          title: "Custom AppBar",
          color: Colors.red,
          centerTitle: true,
          leading: const Icon(Icons.arrow_back_ios),
          widgets: const [
            Icon(Icons.search),
          ],
        ),
        body: const Center(child: Text("Hello from custom_appbar!")),
      ),
    );
  }
}
