class PhotoModel {
  String id;
  String author;
  String url;

  PhotoModel({required this.id, required this.author, required this.url});

  factory PhotoModel.formJson(Map<String, dynamic> json){
    return PhotoModel(
      id: json['id'],
      author: json['author'],
      url: json['download_url'],
    );
  }
}