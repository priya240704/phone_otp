import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhonePage extends StatefulWidget{
  const PhonePage({Key? key,}):super(key: key);
  static String verify="";

  @override
  _phonePageState createState() => _phonePageState();
}

class _phonePageState extends State<PhonePage>{
  TextEditingController countrycode=TextEditingController();
  var phone;

  @override
  void initState(){
    countrycode.text="+91";
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25,right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  "assets/Image/img1.png",
                  width: 150,
                  height: 150),
              SizedBox(
                height: 25,
              ),
              Text("PhoneVerification",style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: 10,
              ),
              Text("We need to register your phone before getting started !",style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                        width: 40,
                        child: TextField(
                          controller: countrycode,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        )),
                    Text("|",style: TextStyle(fontSize: 33,
                    color: Colors.grey),),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                          keyboardType:TextInputType.phone,//keyboard ma number show thase
                          onChanged: (value){
                            phone=value;//textfield ma koi change thy to phone ma save thy jase
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                              hintText: "Phone"
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,//means phone ni jem sixe lese
                child: ElevatedButton(onPressed:()async{
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: '${countrycode.text+phone}',
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException e) {},
                    codeSent: (String verificationId, int? resendToken) {
                      PhonePage.verify=verificationId;
                      Navigator.pushNamed(context, "otp");//aa ahiya su kam set karyu km k phone ma otp ave to direct bija page par move thy
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );
                  // Navigator.pushNamed(context, "otp");
                },
                  child: Text("Send the code "),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),),
              )
            ],
          ),
        ),
      )
    );
  }
}
