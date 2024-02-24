import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone_otp/Home_page.dart';

class OnlinePage extends StatefulWidget{
  const OnlinePage({Key? key,}):super(key: key);
  // static String verify="";

  @override
  OnlinePagestate createState() => OnlinePagestate();
}

class OnlinePagestate extends State<OnlinePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
         Column(
          children: [
            Padding(
             padding: const EdgeInsets.only(top: 50,left: 5,right: 5),
              child: Row(
                children: [
                  IconButton(onPressed: (){
                   Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                      icon: Icon(Icons.arrow_back_ios,color: Colors.white,),)
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10),
                children: [
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                  },
                    child: Text(
                      "Messages",
                      style: TextStyle(color: Colors.grey,fontSize: 20),
                    ),),
                  SizedBox(
                    width: 35,
                  ),
                  TextButton(onPressed: (){
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnlinePage()));
                  },
                    child: Text(
                      "Online",
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),),
                  SizedBox(
                    width: 35,
                  ),
                  TextButton(onPressed: (){},
                    child: Text(
                      "Group",
                      style: TextStyle(color: Colors.grey,fontSize: 20),
                    ),),
                  SizedBox(
                    width: 35,
                  ),
                  TextButton(onPressed: (){},
                    child: Text(
                      "More",
                      style: TextStyle(color: Colors.grey,fontSize: 20),
                    ),),
                ],
              ),
            )
          ],
        ),
          Positioned(
              top: 190,
              left: 0,
              right: 0,
              height: 220,
              child: Container(
                padding: EdgeInsets.only(top: 15,left: 25,right: 25),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)
                    )
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Online Member",style: TextStyle(
                          color: Colors.white
                        ),),
                        IconButton(onPressed: (){},
                            icon: Icon(Icons.more_horiz,
                              color: Colors.white,))
                      ],
                    ),
                    SizedBox(
                      height: 90,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(padding: EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 32,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: Image.asset("assets/Image/shivam.jpg").image,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Shviam",
                                  style: const TextStyle(
                                      color: Colors.white,fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 32,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: Image.asset("assets/Image/prit.jpg").image,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Prit",
                                  style: const TextStyle(
                                      color: Colors.white,fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 32,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: Image.asset("assets/Image/hemail.jpg").image,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Hemail",
                                  style: const TextStyle(
                                      color: Colors.white,fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
          ),
          ),
          Positioned(
              top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding:EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)
                    )
                ),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                              radius: 30,
                              backgroundImage: Image.asset("assets/Image/shivam.jpg").image),
                          SizedBox(width: 15,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shivam",style: TextStyle(color: Colors.black),),
                              SizedBox(height: 5,),
                              Text("Hello ! how are you?",style: TextStyle(color: Colors.black),),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
          ))
        ],
      ),
    );
  }
}