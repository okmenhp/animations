import 'package:flutter/material.dart';

class AnimationOpacityWidget extends StatefulWidget {
  const AnimationOpacityWidget({super.key});

  @override
  State<AnimationOpacityWidget> createState() => _AnimationOpacityWidgetState();
}

class _AnimationOpacityWidgetState extends State<AnimationOpacityWidget> {
  bool checkOpacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation Opacity')),
      body: GestureDetector(
        onTap: () {
          setState(() {
            checkOpacity = !checkOpacity;
            print(checkOpacity);
          });
        },
        child: Center(
            child: AnimatedOpacity(
          opacity: checkOpacity ? 0 : 1,
          duration: const Duration(seconds: 2),
          child: const FlutterLogo(
            size: 150,
          ),
        )),
      ),
    );
  }
}
