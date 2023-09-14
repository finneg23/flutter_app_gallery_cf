import "package:flutter_dotenv/flutter_dotenv.dart";

/// Pixabay api docs: https://pixabay.com/api/docs/
class EndPoints{
  final String apiKey ="39450027-fd14e45bebf2c8249294a582a";

      //dotenv.env['API_KEY'] ?? 'API KEY not found';

  String baseUrl = "https://pixabay.com/api/key=";

  String getTypeOfImages(String catagory){
    String result = "";
    if(catagory.isNotEmpty){
      result = "$baseUrl${apiKey}&q=$catagory";
    }
    else{
      result = "$baseUrl${apiKey}&q=firefighter";
    }
    return result;
  }
}