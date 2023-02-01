import 'dart:math';

import 'package:flutter/material.dart';

class ParentSL extends StatelessWidget {
  ParentSL({super.key});
  String get name => 'Parent Stateless';
  final Color? background = Colors.grey[400];

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        height: 80,
        width: 200,
        color: background,
        child: Text(name.toUpperCase()));
  }
}

class BabySL extends ParentSL {
  BabySL({super.key});

  String get name => 'Baby Stateless';
  final Color? background = Colors.pink[300];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: super.build(context),
    );
  }
}

//STATEFULL Parent

List<MaterialColor> colorList = Colors.primaries;

class ParentSF extends StatefulWidget {
  const ParentSF({super.key});
  final String name = 'Parent Stateful';
  final Color color = Colors.orange;

  // DEFAULT
  // @override
  // State<ParentSF> createState() => _ParentSFState();

  @override
  State<ParentSF> createState() => ParentSFState();
}

// DEFAULT
//class _ParentSFState extends State<ParentSF> {
class ParentSFState<T extends ParentSF> extends State<T> {
  late Color tempColor;

  @override
  void initState() {
    super.initState();
    tempColor = widget.color;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tempColor = colorList[Random().nextInt(colorList.length)];
        });
      },
      child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          height: 200,
          width: 200,
          decoration: BoxDecoration(color: tempColor, shape: BoxShape.circle),
          child: Text(widget.name.toUpperCase())),
    );
  }
}

//STATEFULL Baby
class BabySF extends ParentSF {
  const BabySF({super.key});
  final String name = 'Baby Stateful';
  final Color color = Colors.green;

  @override
  // DEFAULT
  //State<BabySF> createState() => _BabySFState();
  State<BabySF> createState() => BabySFState();
}

// DEFAULT
//class _BabySFState extends State<BabySF> {
class BabySFState extends ParentSFState<BabySF> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.black,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        height: 200,
        width: 200,
        decoration:
            const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        child: super.build(context));
  }
}
