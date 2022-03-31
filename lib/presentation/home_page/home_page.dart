import 'package:flutter/material.dart';
import 'package:picsum_scroller_app/providers/models/picsum_image.dart';
import 'package:picsum_scroller_app/providers/picsum_provider.dart';
import 'package:picsum_scroller_app/presentation/home_page/widgets/parallax/parallax.dart';
import 'package:picsum_scroller_app/widgets/drawer/personal_drawer.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final picsumProvider = Provider.of<PicsumProvider>(context);
    final List<PicsumImage> imageList = picsumProvider.imageList;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      drawer: const CustomizedDrawer(),
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
