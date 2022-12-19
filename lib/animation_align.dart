import 'package:flutter/material.dart';

class AnimationAlignWidget extends StatefulWidget {
  const AnimationAlignWidget({super.key});

  @override
  State<AnimationAlignWidget> createState() => _AnimationAlignWidgetState();
}

class _AnimationAlignWidgetState extends State<AnimationAlignWidget> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Align'),
      ),
      body: GestureDetector(
        //GestureDetector lấy cử chỉ
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blueGrey,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(size: 50),
            ),
          ),
        ),
      ),
    );
  }
}
