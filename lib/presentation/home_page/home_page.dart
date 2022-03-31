import 'package:flutter/material.dart';
import 'package:intento_urbe/api/models/picsum_image.dart';
import 'package:intento_urbe/api/picsum_api.dart';
import 'package:intento_urbe/presentation/home_page/widgets/parallax/parallax.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final picsumProvider = Provider.of<PicsumApi>(context);
    final List<PicsumImage> imageList = picsumProvider.imageList;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: imageList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return ParallaxCard(
              image: imageList[index],
            );
          },
        ),
      ),
    );
  }
}
