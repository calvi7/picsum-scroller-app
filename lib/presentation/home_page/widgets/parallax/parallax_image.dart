import 'package:flutter/material.dart';

class ParallaxImage extends StatelessWidget {
  final String url;
  const ParallaxImage({
    Key? key,
    required GlobalKey<State<StatefulWidget>> backgroundImageKey,
    required this.url,
  })  : _backgroundImageKey = backgroundImageKey,
        super(key: key);

  final GlobalKey<State<StatefulWidget>> _backgroundImageKey;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      key: _backgroundImageKey,
      fit: BoxFit.cover,
    );
  }
}
