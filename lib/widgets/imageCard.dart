import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app_gallery/models/gallery.dart';
import 'package:flutter_app_gallery/network/gallery_service.dart';
import 'package:http/http.dart' as http;

class ImageCard extends StatefulWidget{
  const ImageCard({super.key});
  
  @override
  State<StatefulWidget> createState() => _ImageCard();

}

class _ImageCard extends State<ImageCard> {
  GalleryWebService galleryWebService = GalleryWebService(http.Client());
  late Future<Gallery> futureGallery;

  @override
  void initState() {
    super.initState();
    futureGallery = galleryWebService.fetchImages();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Gallery>(
      future: futureGallery,
      builder:(context,snapshot){
        if(snapshot.hasData && snapshot.data != null){
          var webimage = snapshot.data?.hits[0];
          if(webimage != null){
            return Card(
            color: Colors.amber,
            child: SizedBox(
              width: 300,
              height: 300,
              child:  Image.network(webimage.webformatURL)
            ),
          );
          }else{
            return Text('no images loaded');
          }
          
        }else if (snapshot.hasError){
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      }
    );
  }
}
  