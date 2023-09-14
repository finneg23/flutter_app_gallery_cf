
import 'package:flutter_app_gallery/models/webimage.dart';

class Gallery{
  final int total;
  final int totalHits;
  final List<WebImage> hits;

  Gallery({
    required this.total,
    required this.hits,
    required this.totalHits
  });

  factory Gallery.fromJson(Map<String,dynamic> json){
    //capture the hits as an Image
    var list = json['hits'] as List;
    //Then iterate to create a list of images
    List<WebImage> imagesList = list.map((i) => WebImage.fromJson(i)).toList();

    return Gallery(
      total: json['total'],
      totalHits: json['totalHits'],
      hits: imagesList
      );
  }
}