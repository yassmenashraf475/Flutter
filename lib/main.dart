// import 'dart:js_util';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:Editprofile(),

    );
  }
}

class Editprofile extends StatelessWidget {
  bool isPasswordTextField = true;
  bool showpassword = false;

  //const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.green,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                "Edit Profile",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme
                                  .of(context)
                                  .scaffoldBackgroundColor
                          ),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2, blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10)
                            )

                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cGljdHVyZXxlbnwwfHwwfHw%3D&w=1000&q=80")
                          )
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 4,
                                color: Theme
                                    .of(context)
                                    .scaffoldBackgroundColor
                            ),
                            color: Colors.green,
                          ),
                          child: Icon(Icons.edit, color: Colors.white,),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 3),
                    labelText: "Full Name",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "Yassmen Ashraf",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 35.0)),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 3),
                    labelText: "E-mail",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "yassmenashraf982@gmail.com",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 35.0)),
              TextField(
                obscureText: isPasswordTextField ? showpassword : false,
                decoration: InputDecoration(
                    suffixIcon: isPasswordTextField ?
                    IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                      ),
                      onPressed: (){},
                    ): null,

                    contentPadding: EdgeInsets.only(bottom: 3),
                    labelText: "Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "********",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 35.0)),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 3),
                    labelText: "Location",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "ASU",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: (){},
                    child: Text("CANCEL",
                      style: TextStyle(
                          fontSize:14,
                          letterSpacing: 2.2,
                          color: Colors.black),
                    ),
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ),
                  ),
                  ElevatedButton(onPressed: (){},

                      child: Text("SAVE",style: TextStyle(
                          fontSize:14,
                          letterSpacing: 2.2,
                          color: Colors.white)
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      )
                  )

                ],
              )

            ],

          ),
        ),
      ),
    );
  }
}


