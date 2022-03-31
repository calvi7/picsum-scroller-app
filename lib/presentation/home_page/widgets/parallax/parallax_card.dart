import 'package:flutter/material.dart';
import 'package:intento_urbe/api/models/picsum_image.dart';

import 'parallax.dart';

class ParallaxCard extends StatelessWidget {
  ParallaxCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  final PicsumImage image;
  final GlobalKey _backgroundImageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              ParallaxImage(
                url: image.downloadUrl,
                backgroundImageKey: _backgroundImageKey,
              ),
              const ParallaxGradient(),
              ParallaxAuthor(author: image.author),
            ],
          ),
        ),
      ),
    );
  }
}
