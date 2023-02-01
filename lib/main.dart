import 'package:extending_widgets/widgets.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: _title,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        //appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ParentSL(), BabySL(), ParentSF(), BabySF()],
          ),
        ),
      ),
    );
  }
}
