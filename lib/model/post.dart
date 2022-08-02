class Post{
  String? content;
  String? image;
  int? noLike;

  Post.fromJson(Map<String,dynamic> data){
    content = data['content'];
    image = data['image'];
    noLike = data['noLike'];
  }
}