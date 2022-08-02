import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taska/model/user.dart';

import 'model/post.dart';

class StoryWidget extends StatefulWidget {
  User? user;
  Post? post;
  StoryWidget(this.user,this.post);
  @override
  _StoryWidgetState createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 4,right: 4),
        width: MediaQuery.of(context).size.width/3.5,
        height: MediaQuery.of(context).size.height/4.5,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Image.asset(widget.user!.image!,
                height: MediaQuery.of(context).size.height/4.5,
                fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 23,
                    child: CircleAvatar(
                      backgroundImage:AssetImage(widget.post!.image!),
                    ),
                  ),
                  Spacer(),
                  Text(widget.user!.name!,
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),)
                ],
              ),
            )
          ],
        )
    );
  }
}


//first story
// Container(
// margin: EdgeInsets.only(left: 8,right: 4),
// width: MediaQuery.of(context).size.width/3.5,
// height: MediaQuery.of(context).size.height/4.5,
// child: Stack(
// children: [
// ClipRRect(
// borderRadius: BorderRadius.all(Radius.circular(15)),
// child: Image.asset('assets/images/ZiClJf-1920w.jpg',
// height: MediaQuery.of(context).size.height/4.5,
// fit: BoxFit.cover,),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// CircleAvatar(
// backgroundColor: Colors.white,
// child: Icon(Icons.add),
// ),
// Spacer(),
// Text("Add Story",
// style: TextStyle(color: Colors.white,
// fontWeight: FontWeight.bold,
// fontSize: 16),)
// ],
// ),
// )
// ],
// )
// ),
