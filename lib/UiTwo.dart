import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiTwo extends StatefulWidget {
  @override
  _UiTwoState createState() => _UiTwoState();
}

class _UiTwoState extends State<UiTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('feed',style: TextStyle(color: Colors.black),),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      body:SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundImage:AssetImage('assets/images/tree-736885__480.jpg'),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Abdallah Gh ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  Text("Added 13 photos to the",style: TextStyle(fontSize: 16)),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text("album ",style: TextStyle(fontSize: 16)),
                                  Text("Creative Photography",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)

                                ],
                              ),
                              SizedBox(height: 5,),
                              Text('3 min ago',style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.bold))

                            ],
                          ),
                          Spacer(),
                          Image.asset('assets/images/dots.png',width: 28,)
                        ],),
                    ),
                    const SizedBox(height: 18,),
                    Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Photo Photo Photo Photo Photo Photo Photo Photo "),
                          Text("Photo Photo Photo Photo Photo Photo Photo Photo "),

                        ],
                      ),),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: Image.asset('assets/images/Image_created_with_a_mobile_phone.png',
                          height: MediaQuery.of(context).size.height/4.5,
                          width: MediaQuery.of(context).size.width/1,
                          fit: BoxFit.cover,),
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: Image.asset('assets/images/tree-736885__480.jpg',
                          height: MediaQuery.of(context).size.height/4.5,
                          width: MediaQuery.of(context).size.width/1,
                          fit: BoxFit.cover,),
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: Image.asset('assets/images/ZiClJf-1920w.jpg',
                          height: MediaQuery.of(context).size.height/4.5,
                          width: MediaQuery.of(context).size.width/1,
                          fit: BoxFit.cover,),
                      ),
                    ),



                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width/6.5,
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                      child: Image.asset('assets/images/like.png',width: 28,)),
                                  Positioned(
                                      left: 20,
                                      child: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Colors.white,
                                          child: Image.asset('assets/images/love.png',width: 28,)))


                                ],
                              ),
                            ),
                            Text("400",style: TextStyle(fontWeight: FontWeight.bold),),
                            Spacer(),
                            Text("122 Comments",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)

                          ],

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/22,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/images/like (1).png',width: 20,),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/1.2,
                                // height: MediaQuery.of(context).size.height/25,
                                child: TextField(
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey.shade100,
                                    contentPadding: EdgeInsets.only(left: 8),
                                    hintText: "Add a comment",
                                    hintStyle: TextStyle(color: Colors.black54,fontSize: 18,),
                                   suffixIcon: Icon(Icons.tag_faces_sharp,size: 24,color: Colors.black54,),
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
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
