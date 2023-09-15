import "package:flutter_dotenv/flutter_dotenv.dart";

/// picsum.photos api doc: https://picsum.photos/
class EndPoints{
  final String apiKey ="39450027-fd14e45bebf2c8249294a582a";

      //dotenv.env['API_KEY'] ?? 'API KEY not found';

  String baseUrl = "https://picsum.photos/";

  String getImageSize(int width,int height){
    return "$baseUrl$width/$height";
  }

  //Default list size is 30
  String getListOfImages(){
    return "${baseUrl}v2/list";
  }

  //Returns specific image given the id
  String getImageFromId(int imageId){
    return "${baseUrl}id/$imageId";
  }
  //Returns specific image info given the id
  String getImageInfoFromId(int imageId){
    return "${baseUrl}id/$imageId/info";
  }
}