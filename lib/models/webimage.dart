
class WebImage{
  int id;
  int likes;
  String webformatURL;
  String user;

  WebImage({
    required this.id,
    required this.likes,
    required this.webformatURL,
    required this.user,
  });

  factory WebImage.fromJson(Map<String,dynamic>json){
    return WebImage(
      id: json['id'],
       likes: json['likes'],
        webformatURL: json['webformatURL'],
         user: json['user']
         );
  }

}