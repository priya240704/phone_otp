import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone_otp/phone.dart';

import 'online_page.dart';


class HomePage extends StatefulWidget{
  const HomePage({Key? key,}):super(key: key);
 // static String verify="";

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<HomePage>{
  final GlobalKey<ScaffoldState> _globalKey=GlobalKey();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.transparent,
     body: Stack(
       children: [
         Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 50,left: 5,right: 5),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   IconButton(onPressed: (){
                     _globalKey.currentState?.openDrawer();
                   },
                       icon: Icon(Icons.menu,
                       color: Colors.white,)),
                   IconButton(onPressed: (){
                         
                   },
                       icon:Icon(Icons.search,
                         color: Colors.white,))
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
                       //Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                     },
                         child: Text(
                              "Messages",
                              style: TextStyle(color: Colors.white,fontSize: 20),
                             ),),
                     SizedBox(
                       width: 35,
                     ),
                     TextButton(onPressed: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnlinePage()));
                     },
                       child: Text(
                         "Online",
                         style: TextStyle(color: Colors.grey,fontSize: 20),
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
                      Text("Favorite contacts",style: TextStyle(color: Colors.white),),
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
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: Image.asset("assets/Image/parth.jpg").image,
                                ),
                              ),
                               SizedBox(
                              height: 5,
                              ),
                                  Text(
                                      "Parth",
                                         style: const TextStyle(
                                             color: Colors.white,fontSize: 16),
                                  )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: Image.asset("assets/Image/papa.jpg").image,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Papa",
                                style: const TextStyle(
                                    color: Colors.white,fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: Image.asset("assets/Image/mumma.jpg").image,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Mumma",
                                style: const TextStyle(
                                    color: Colors.white,fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
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
                                "Shivam",
                                style: const TextStyle(
                                    color: Colors.white,fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: Image.asset("assets/Image/rajvi.jpg").image,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Rajvi",
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
              ), // color: Colors.greenAccent,
         )),
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
                 padding: EdgeInsets.only(left: 25),
                 children: [
                   Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               CircleAvatar(
                                   radius: 30,
                                   backgroundImage: Image.asset("assets/Image/shivam.jpg").image),
                               SizedBox(width: 15,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Shivam",style: TextStyle(color: Colors.black),),
                                   SizedBox(height: 5,),
                                   Text("Hello ! how are you?",style: TextStyle(color: Colors.black),),
                                 ],
                               )
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 25,top: 5),
                             child: Column(
                               children: [
                                 Text("3:37",
                                 style: TextStyle(
                                   fontSize: 10
                                 ),),
                                 SizedBox(height: 10,),
                                 CircleAvatar(
                                   radius: 7,
                                   backgroundColor: Colors.greenAccent,
                                   child: Text(
                                     "2",
                                     style: TextStyle(
                                       fontSize: 10,
                                       color: Colors.white
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           )
                         ],
                       ),
                       Divider(
                         indent: 70,
                       )
                     ],
                   ),
                   Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               CircleAvatar(
                                   radius: 30,
                                   backgroundImage: Image.asset("assets/Image/papa.jpg").image),
                               SizedBox(width: 15,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Papa",style: TextStyle(color: Colors.black),),
                                   SizedBox(height: 5,),
                                   Text("Hello beta !",style: TextStyle(color: Colors.black),),
                                 ],
                               )
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 25,top: 5),
                             child: Column(
                               children: [
                                 Text("3:48",
                                   style: TextStyle(
                                       fontSize: 10
                                   ),),
                                 SizedBox(height: 10,),
                               ],
                             ),
                           )
                         ],
                       ),
                       Divider(
                         indent: 70,
                       )
                     ],
                   ),
                   Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               CircleAvatar(
                                   radius: 30,
                                   backgroundImage: Image.asset("assets/Image/mumma.jpg").image),
                               SizedBox(width: 15,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Mumma",style: TextStyle(color: Colors.black),),
                                   SizedBox(height: 5,),
                                   Text("Hey beta!",style: TextStyle(color: Colors.black),),
                                 ],
                               )
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 25,top: 5),
                             child: Column(
                               children: [
                                 Text("4:00",
                                   style: TextStyle(
                                       fontSize: 10
                                   ),),
                                 SizedBox(height: 10,),
                                 CircleAvatar(
                                   radius: 7,
                                   backgroundColor: Colors.greenAccent,
                                   child: Text(
                                     "2",
                                     style: TextStyle(
                                         fontSize: 10,
                                         color: Colors.white
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           )
                         ],
                       ),
                       Divider(
                         indent: 70,
                       )
                     ],
                   ),
                   Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               CircleAvatar(
                                   radius: 30,
                                   backgroundImage: Image.asset("assets/Image/rajvi.jpg").image),
                               SizedBox(width: 15,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Rajvi",style: TextStyle(color: Colors.black),),
                                   SizedBox(height: 5,),
                                   Text("Hey Meri jaan",style: TextStyle(color: Colors.black),),
                                 ],
                               )
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 25,top: 5),
                             child: Column(
                               children: [
                                 Text("4:00",
                                   style: TextStyle(
                                       fontSize: 10
                                   ),),
                                 SizedBox(height: 10,),
                                 CircleAvatar(
                                   radius: 7,
                                   backgroundColor: Colors.greenAccent,
                                   child: Text(
                                     "2",
                                     style: TextStyle(
                                         fontSize: 10,
                                         color: Colors.white
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           )
                         ],
                       ),
                       Divider(
                         indent: 70,
                       )
                     ],
                   ),
                   Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               CircleAvatar(
                                   radius: 30,
                                   backgroundImage: Image.asset("assets/Image/parth.jpg").image),
                               SizedBox(width: 15,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Parth",style: TextStyle(color: Colors.black),),
                                   SizedBox(height: 5,),
                                   Text("Hey dii!",style: TextStyle(color: Colors.black),),
                                 ],
                               )
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 25,top: 5),
                             child: Column(
                               children: [
                                 Text("4:00",
                                   style: TextStyle(
                                       fontSize: 10
                                   ),),
                                 SizedBox(height: 10,),
                                 CircleAvatar(
                                   radius: 7,
                                   backgroundColor: Colors.greenAccent,
                                   child: Text(
                                     "2",
                                     style: TextStyle(
                                         fontSize: 10,
                                         color: Colors.white
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           )
                         ],
                       ),
                       Divider(
                         indent: 70,
                       )
                     ],
                   ),
                   Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               CircleAvatar(
                                   radius: 30,
                                   backgroundImage: Image.asset("assets/Image/dipali.jpg").image),
                               SizedBox(width: 15,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Dipali",style: TextStyle(color: Colors.black),),
                                   SizedBox(height: 5,),
                                   Text("Hey dii! Where are you ?",style: TextStyle(color: Colors.black),),
                                 ],
                               )
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 25,top: 5),
                             child: Column(
                               children: [
                                 Text("4:00",
                                   style: TextStyle(
                                       fontSize: 10
                                   ),),
                                 SizedBox(height: 10,),
                                 CircleAvatar(
                                   radius: 7,
                                   backgroundColor: Colors.greenAccent,
                                   child: Text(
                                     "2",
                                     style: TextStyle(
                                         fontSize: 10,
                                         color: Colors.white
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           )
                         ],
                       ),
                       Divider(
                         indent: 70,
                       )
                     ],
                   ),
                   Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               CircleAvatar(
                                   radius: 30,
                                   backgroundImage: Image.asset("assets/Image/prit.jpg").image),
                               SizedBox(width: 15,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Prit",style: TextStyle(color: Colors.black),),
                                   SizedBox(height: 5,),
                                   Text("Hey diii! Where are you ?",style: TextStyle(color: Colors.black),),
                                 ],
                               )
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 25,top: 5),
                             child: Column(
                               children: [
                                 Text("4:00",
                                   style: TextStyle(
                                       fontSize: 10
                                   ),),
                                 SizedBox(height: 10,),
                               ],
                             ),
                           )
                         ],
                       ),
                       Divider(
                         indent: 70,
                       )
                     ],
                   ),
                 ],
               ),
         ))
       ],
     ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: FloatingActionButton(
            backgroundColor: Colors.greenAccent,
            child: InkWell(
              onTap: (){},
                child: Icon(
                  Icons.edit_outlined,size: 30,)),
            onPressed: (){
            },
          ),
        ),
      ),
      drawer: Drawer(
        width: 275,
        backgroundColor: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(40))
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
              borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
            boxShadow:[
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 30,
                blurRadius: 30
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20,top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                          size: 20,
                          ),
                          SizedBox(
                            width: 56,
                          ),
                          Text(
                              "Setting",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: Image.asset("assets/Image/priya.jpg").image,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                            "Priya Sorthiya",
                        style: TextStyle(
                          color:Colors.white
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Icon(Icons.key_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 56,
                          ),
                          Text(
                            "Account",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Icon(Icons.chat_bubble,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 56,
                          ),
                          Text(
                            "Chats",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Icon(Icons.notifications_active,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 56,
                          ),
                          Text(
                            "Notifications",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Icon(Icons.storage,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 56,
                          ),
                          Text(
                            "Data and Storage",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Icon(Icons.help,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 56,
                          ),
                          Text(
                            "Help",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 35,
                      color: Colors.greenAccent,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Icon(Icons.people_outline,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 56,
                          ),
                          Text(
                            "Invite a friend",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: InkWell(
                    onTap: ()async{
                     final result=await showDialog(context: context, builder: (BuildContext context){
                       return AlertDialog(
                         backgroundColor: Colors.grey.shade100,
                           icon: Icon(Icons.info,size: 40,),
                            title: Text("Are you sure want to log out",
                            style: TextStyle(color:Colors.black),
                            ),
                         content:  Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             ElevatedButton(onPressed: (){
                               Navigator.of(context).push(MaterialPageRoute(builder: (context) => PhonePage()));
                             },
                                 style: ElevatedButton.styleFrom(
                                   backgroundColor: Colors.grey
                                 ),
                                 child: Text("Yes"),),
                             ElevatedButton(onPressed: (){
                               Navigator.pop(context,false);
                             },
                               style: ElevatedButton.styleFrom(
                                   backgroundColor: Colors.grey
                               ),
                               child: Text("No"),)
                           ],
                         ),
                       );
                     });
                    },
                    child: Row(
                      children: [
                        Icon(Icons.logout,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 56,
                        ),
                        Text(
                          "Log Out",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

