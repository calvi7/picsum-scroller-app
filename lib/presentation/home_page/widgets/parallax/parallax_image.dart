import 'package:flutter/material.dart';
import 'package:intento_urbe/presentation/home_page/widgets/parallax/parallax.dart';

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
    return Flow(
        delegate: ParallaxFlowDelegate(
          scrollable: Scrollable.of(context)!,
          listItemContext: context,
          backgroundImageKey: _backgroundImageKey,
        ),
        children: [
          Image.network(
            url,
            key: _backgroundImageKey,
            fit: BoxFit.cover,
          ),
        ]);
  }
}
