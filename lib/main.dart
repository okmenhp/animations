import 'package:animations/animated_builder.dart';
import 'package:animations/animation_align.dart';
import 'package:animations/animation_hero.dart';
import 'package:animations/animation_opacity.dart';
import 'package:animations/curved_animation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpansionTile(
          title: const Text('Animation'),
          children: <Widget>[
            ListTile(
              title: const Text('Animation Align'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((_) => const AnimationAlignWidget()))),
            ),
            ListTile(
              title: const Text('Animation Builder'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((_) => const AnimatedBuilderWidget()))),
            ),
            ListTile(
              title: const Text('Curved Animation'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((_) => const CurvedAnimationWidget()))),
            ),
            ListTile(
              title: const Text('Hero Animation'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((_) => const AnimationHeroWidget()))),
            ),
            ListTile(
              title: const Text('Opacity Animation'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((_) => const AnimationOpacityWidget()))),
            ),
          ],
        ),
      ],
    );
  }
}
