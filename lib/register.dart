

  //   import 'dart:convert';
//import 'dart:html';
//import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hamro_rental_app/login.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
class registerApp extends StatefulWidget {
  const registerApp({super.key});

  @override
  State<registerApp> createState() => _registerAppState();
}

class _registerAppState extends State<registerApp> {
 
  final username = TextEditingController();
  final useremail = TextEditingController();
  final Password = TextEditingController();
   final formKey = GlobalKey<FormState>();
   Future register()async{
    var Url= "http://192.168.1.73/rental/register.php";
    var response = await http.post(Uri.parse(Url),body: {
      "username" : username.text,
      "useremail"  : useremail.text,
      "userpassword" : Password.text,

    });
    debugPrint(response.body);
    // var data = json.decode(response.body);
var data=response.body;
    if(data == "success"){
     Fluttertoast.showToast(
        msg: "sucess",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    }else{
      Fluttertoast.showToast(
        msg: " register failed "+data,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    }
   }

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

          appBar: AppBar(
          
          backgroundColor: Colors.blueGrey,
         
           title: Text("welcome to Kotha khoj"),
        ),

body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  

                  const ListTile(
                    title: Text(
                      "Register New Account",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/rent3.jpg'),
                   radius: 100,
                  ),

                  //As we assigned our controller to the textformfields

                 Container(
                    margin: EdgeInsets.all(8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.deepPurple.withOpacity(.2)),
                    child: TextFormField(
                      controller: username,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "username is required";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        border: InputBorder.none,
                        hintText: "Username",
                      ),
                    ),
                  ),

                  //Password field
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.deepPurple.withOpacity(.2)),
                    child: TextFormField(
                      controller: useremail,
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "email is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                          icon: const Icon(Icons.email),
                          border: InputBorder.none,
                            hintText: "useremail",
           
            ),
                    ),
                  ),

                  //Confirm Password field
                  // Now we check whether password matches or not
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.deepPurple.withOpacity(.2)),
                    child: TextFormField(
                      controller: Password,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "password is required";
                        } 
                       
                        return null;
                      },
                      obscureText: !isVisible,
                      decoration: InputDecoration(
                          icon: const Icon(Icons.lock),
                          border: InputBorder.none,
                          hintText: "Password",
                          suffixIcon: IconButton(
                              onPressed: () {
                                //In here we will create a click to show and hide the password a toggle button
                                setState(() {
                                  //toggle button
                                  isVisible = !isVisible;
                                });
                              },
                              icon: Icon(isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off))),
                    ),
                  ),

                  const SizedBox(height: 10),
                  //Login button
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.deepPurple),
                    child: TextButton(
                        onPressed: () {
                         // Navigator.push(context,MaterialPageRoute(builder: (_)=>loginApp()));
                          register();

                          if (formKey.currentState!.validate()) {
                            
                       Navigator.push(context, MaterialPageRoute(builder: (_)=>loginApp()));

                          }
                          
                            
                          
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),

                  //Sign up button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      TextButton(
                          onPressed: () {
                           
                           Navigator.push(context, MaterialPageRoute(builder: (_)=>loginApp() ));
                           
                          },
                          
                          child: const Text("Login"))
                    ],
                  )
                ],
              ),
            ),
          )
        )
),
),
      );
        
      
   

      
    
  }
}