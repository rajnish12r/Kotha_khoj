import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hamro_rental_app/login1.dart';
import 'package:hamro_rental_app/map.dart';
import 'package:hamro_rental_app/register.dart';
import 'package:http/http.dart' as http;
//import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
class loginApp extends StatefulWidget {
  const loginApp({super.key});

  @override
  State<loginApp> createState() => _loginAppState();
}

class _loginAppState extends State<loginApp> 
// with SingleTickerProviderStateMixin

{
  final useremail = TextEditingController();
  final password= TextEditingController();
  final formKey = GlobalKey<FormState>();

   Future login()async{
    var Url= "http://192.168.1.73/rental/login.php";
    
    var response = await http.post(Uri.parse(Url),body: {
     
      "useremail"  : useremail.text,
      "userpassword" : password.text,

    });
   
var data=response.body;
debugPrint(data);
    if(data == "success"){
      Fluttertoast.showToast(
        msg: "login successful",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
     Navigator.push(context, MaterialPageRoute(builder: (_)=>login1app()));
    
    }
    
    else{
      Fluttertoast.showToast(
        msg: "useremail & password incorrect : "+data,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    
     //Navigator.push(context, MaterialPageRoute(builder: (_)=>mapApp()));
    
    }
   }
  bool isVisible= false;


  //   late final AnimationController _controller;
  //   @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _controller = AnimationController(
  //     duration: Duration(seconds: 2),
  //     vsync: this);
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   _controller.dispose();
  // }
  // bool bookmarked = false;
  int myindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      home: Scaffold(
        resizeToAvoidBottomInset: false,
         appBar: AppBar(
          
          backgroundColor: Colors.blueGrey,
          title:Row(
          children: [
            // Image.asset('images/rent5.jpg',
            // height: 50,
            // width: 50,),
            //SizedBox(width: 5,),
            Text("welcome to Kotha khoj"),
          ],  
          ) 
        ),
        floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.add),
           shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)), 
        ),
        bottomNavigationBar:
         // shape: CircularNotchedRectangle(),
           BottomNavigationBar(
            
            backgroundColor: Colors.transparent,
            
            onTap: (index){
              setState(() {
                myindex = index;
              });
            },
            currentIndex: myindex,
            items: [
          
              BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home'
              ),
          
              // BottomNavigationBarItem(
              // icon: Icon(Icons.favorite),
              // label: 'favorite'
              // ),
          
              //  BottomNavigationBarItem(
              // icon: Icon(Icons.chat),
              // label: 'chat'
              // ),
              
               BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'setting'
              ),
          
              ]
              ),
        
        // bottomNavigationBar: BottomAppBar(
          
        //   notchMargin: 5,
        //   shape: CircularNotchedRectangle(),
        //   color: Colors.blueGrey,
        //   child:Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [

        //       Column(
        //         children: [
        //       Icon(Icons.home),
        //       Text('home'),
        //        ],
        //       ),
              
        //      Column(
        //         children: [
        //           Icon(Icons.settings),
        //           Text('settings'),
        //         ],
        //       )  
        //     ]
        //  ) ),


        body: Container(
          
          // width: double.infinity,
          // height:double.maxFinite,
          //color: Colors.white10,
          // decoration: BoxDecoration(
            
          //   image: DecorationImage(
          //     image:AssetImage('images/rent4.jpg',
              
          //     ), 
          //     fit: BoxFit.cover
          //     ),
          // ),
          

          child: SingleChildScrollView(
            
            child: Form(
              key: formKey,
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
             Padding(padding: EdgeInsets.all(0),),


            //  Container(
            //   child:GestureDetector(
            //     onTap: (){
            //       if(bookmarked == false){
            //         bookmarked=true;
            //         _controller.forward();
            //       }else{
            //         bookmarked=false;
            //         _controller.reverse();
            //       }
            //     },
            //   child: Lottie.network("images/ani2.mp4",
            //   controller: _controller,
            //   ),
            //  ) , 
            //  ),
                      CircleAvatar(
              backgroundImage: AssetImage('images/rent6.jpg'),
              radius: 100,
             ),
             
      

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
        SizedBox(
            height: 1,
          ),
          
         Container(
                    margin: const EdgeInsets.all(8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.deepPurple.withOpacity(.2)),
                    child: TextFormField(
                      controller: password,
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

        

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.all(10)),
            TextButton(onPressed: (){},
             child:Text('forgot password?'))
            ],
          ),
              ElevatedButton(onPressed: (){


                
                if(formKey.currentState!.validate()){
                  login();

                }
                
              }, 
              style: ElevatedButton.styleFrom(
                fixedSize: Size(340, 50),
             // foregroundColor: Colors.amber,
                primary: Colors.deepPurple,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),                 
                ),  
              ),
              child: Text('Login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),)),
              // SizedBox(
              //   height: 1,
              // ),
              
               //Sign up button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      
                      TextButton(
                          onPressed: () {
                           
                         Navigator.push(context, PageTransition(child: registerApp(), type: PageTransitionType.rightToLeft,
                         alignment: Alignment.center,
                         duration: Duration(seconds: 1)));
                           
                          },
                          child: const Text("SignUp"))
                    ],
                  ),
                 
                  Text('or loginwith'),
                 SizedBox(
                    height: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     // Padding(padding:EdgeInsets.symmetric(vertical: 10,horizontal: 10)),
                      Column(
                        children: [

                       
                      Image.asset('images/facebook.png',
                      height: 40,
                      width: 40,
                       ),
                       Text('Facebook')
                        ],
                      ),
                      Column(
                        children: [

                       
                      Image.asset('images/google.jpg',
                      height: 40,
                      width: 40,
                       ),
                       Text('Google')
                        ],
                      ),
                      Column(
                        children: [

                       
                      Image.asset('images/apple.jpg',
                      height: 40,
                      width: 40,
                       ),
                       Text('Apple')
                        ],
                      ),

                    ],
                  )
              
            ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}