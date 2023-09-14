import 'dart:convert';

import 'package:flutter_app_gallery/models/gallery.dart';
import 'package:flutter_app_gallery/network/endpoints.dart';
import 'package:http/http.dart' as http;

class GalleryWebService{
  final http.Client _client;
  final EndPoints endPoints = EndPoints();

  GalleryWebService(this._client);
  
  Future<Gallery> fetchImages() async{
    try{
      final response =  await _client
    .get(Uri.parse(endPoints.getTypeOfImages("firefighter")));
      if(response.statusCode == 200){
        return Gallery.fromJson(jsonDecode(response.body));
      }else{
        print(response.body);
        throw Exception(response.statusCode);
      }
    }
    catch(e){
      return Future.error(e);
    }
  }

}