

import 'package:taska/model/post.dart';
import 'package:taska/model/user.dart';



class PostResponse{
  User? user;
  Post? post;
   PostResponse.fromJson(Map<String,dynamic> data){
     user = User.fromJson(data['user']);
     post = Post.fromJson(data['post']);

   }
}