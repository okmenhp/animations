import 'package:flutter/material.dart';

class CurvedAnimationWidget extends StatefulWidget {
  const CurvedAnimationWidget({super.key});

  @override
  State<CurvedAnimationWidget> createState() => _CurvedAnimationWidgetState();
}

class _CurvedAnimationWidgetState extends State<CurvedAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  // initState được gọi một lần trước khi widget được tạo

  @override
  void initState() {
    print('Call initState()');

    super.initState();
    // AnimationController hỗ trợ phương thức điều khiển animation
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    animation =
        CurvedAnimation(curve: Curves.fastOutSlowIn, parent: controller);
    animation.addListener(() {
      setState(() {});
    });
    controller.forward();
  }

  @override
  // Hàm dispose được gọi khi State bị xóa
  void dispose() {
    super.dispose();
    controller.dispose();
    print('Call dispose()');
  }

  @override
  Widget build(BuildContext context) {
    print('Created Widget');
    return Scaffold(
      appBar: AppBar(title: const Text('Curved Animation')),
      body: Center(
          child: Text(
        'Hello Flutter',
        style: TextStyle(fontSize: 20.0 * controller.value),
      )),
    );
  }
}
