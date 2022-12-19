import 'package:animations/data/data.dart';
import 'package:flutter/material.dart';

class AnimationHeroWidget extends StatefulWidget {
  const AnimationHeroWidget({super.key});

  @override
  State<AnimationHeroWidget> createState() => _AnimationHeroWidgetState();
}

class _AnimationHeroWidgetState extends State<AnimationHeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero Animation')),
      body: ListView.builder(
          itemCount: listItem.length,
          itemBuilder: (context, index) {
            final item = listItem[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ScreenSecondary(item: item))),
                child: Row(
                  children: [
                    Hero(
                      transitionOnUserGestures: true,
                      tag: item.title,
                      child: Image.network(
                        listItem[index].urlImage,
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(listItem[index].title)
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class ScreenSecondary extends StatelessWidget {
  final Item item;
  const ScreenSecondary({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.title)),
      body: Hero(
        transitionOnUserGestures: true,
        tag: item.title,
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.network(
            item.urlImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
