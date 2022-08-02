import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taska/Story.dart';
import 'package:taska/UiTwo.dart';
import 'package:taska/data/data.dart';
import 'package:taska/post.dart';

class UiOne extends StatefulWidget {
  @override
  _UiOneState createState() => _UiOneState();
}

class _UiOneState extends State<UiOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 12,),
              SizedBox(
                height: MediaQuery.of(context).size.height/20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  const Icon(Icons.camera_alt,color: Colors.black,size: 28,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/1.5,
                    // height: MediaQuery.of(context).size.height/18,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 25,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        contentPadding: EdgeInsets.all(0),
                        hintText: "search",
                        hintStyle: TextStyle(color: Colors.black54,fontSize: 23,),
                        prefixIcon: Icon(Icons.search,size: 24,color: Colors.black54,),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                        ),
                      ),

                    ),
                  ),
                  Image.asset('assets/images/messenger.png',width: 28,)

                ],),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Row(children: [
                  Text("Stories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text("See Archive",style: TextStyle(fontSize: 16)),
                  Icon(Icons.chevron_right)
                ],),
              ),
              const SizedBox(height: 12,),
              SizedBox(
                height: MediaQuery.of(context).size.height/4.5,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8,right: 4),
                      width: MediaQuery.of(context).size.width/3.5,
                      height: MediaQuery.of(context).size.height/4.5,
                      child: Stack(
                      children: [
                      ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Image.asset('assets/images/ZiClJf-1920w.jpg',
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
                      child: Icon(Icons.add),
                      ),
                      Spacer(),
                      Text("Add Story",
                      style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),)
                      ],
                      ),
                      )
                      ],
                      )
                      ),
                    ...posts.map((e) =>  StoryWidget(e.user,e.post)).toList()
                  ],
                ),
              ),
              const SizedBox(height: 18,),
              //------------------------------1
             ...posts.map((e) =>  PostWidget(e.user,e.post)).toList()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>UiTwo()  ),
          );
        },
        child: Icon(Icons.add,size: 40,),
      ),
    );
  }
}
