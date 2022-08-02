import '../model/postRespons.dart';

List<Map<String,dynamic>> postResponse=[
  {
    'user':{
      'name':'abdallah',
      'image':'assets/images/2.jpg',
    },
    'post':{
      'content':'the first post',
      'image':'assets/images/Image_created_with_a_mobile_phone.png',
      'numlike':20,
    }
  },
  {
    'user':{
      'name':'mohmmed',
      'image':'assets/images/Image_created_with_a_mobile_phone.png',
    },
    'post':{
      'content':'hello',
      'image':'assets/images/tree-736885__480.jpg',
      'numlike':30,
    }
  },
  {
    'user':{
      'name':'ahmed',
      'image':'assets/images/ZiClJf-1920w.jpg',
    },
    'post':{
      'content':'Hi',
      'image':'assets/images/ZiClJf-1920w.jpg',
      'numlike':55,
    }
  },
];

List<PostResponse> posts=
    postResponse.map((e)=> PostResponse.fromJson(e)).toList();




