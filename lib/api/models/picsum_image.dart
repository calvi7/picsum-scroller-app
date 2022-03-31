import 'dart:convert';

class PicsumImage {
  PicsumImage({
    required this.id,
    required this.author,
    required this.width,
    required this.height,
    required this.url,
    required this.downloadUrl,
  });

  String id;
  String author;
  int width;
  int height;
  String url;
  String downloadUrl;

  factory PicsumImage.fromJson(String str) =>
      PicsumImage.fromMap(json.decode(str));

  factory PicsumImage.fromMap(Map<String, dynamic> json) => PicsumImage(
        id: json["id"],
        author: json["author"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
        downloadUrl: json["download_url"],
      );
}
