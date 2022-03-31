import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'models/picsum_image.dart';

class PicsumProvider extends ChangeNotifier {
  static const String _apiLink = 'picsum.photos';
  List<PicsumImage> imageList = [];
  int _currentPage = 0;

  PicsumProvider() {
    loadPost();
  }

  void loadPost() async {
    var uri = Uri.https(_apiLink, 'v2/list', {
      'page': '$_currentPage',
      'limit': '10',
    });
    _currentPage++;

    print(uri.toString());

    var response = await http.get(uri);

    List<dynamic> jsonResponse = json.decode(response.body);

    List<PicsumImage> postImages = [];

    for (dynamic img in jsonResponse) {
      var image = PicsumImage.fromMap(img);
      postImages.add(image);
    }
    imageList = [...imageList, ...postImages];

    notifyListeners();
  }
}
