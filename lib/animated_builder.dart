import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatefulWidget {
  const AnimatedBuilderWidget({super.key});

  @override
  State<AnimatedBuilderWidget> createState() => _AnimatedBuilderWidgetState();
}

// 1 TickerProviderStateMixin
class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
    with TickerProviderStateMixin {
  //2
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(
      reverse: true,
    );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Builder'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blueGrey,
          child: AnimatedBuilder(
              animation: _controller,
              child: const Center(
                child: FlutterLogo(
                  size: 50,
                ),
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.translate(
                  offset:
                      Offset(_controller.value * 0.0, _controller.value * 15.0),
                  child: child,
                );
              }),
        ),
      ),
    );
  }
}
