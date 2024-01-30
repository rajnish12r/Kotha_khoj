import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:hamro_rental_app/map.dart';
// import 'package:hamro_rental_app/register.dart';
// import 'package:http/http.dart' as http;
// //import 'package:lottie/lottie.dart';
// import 'package:page_transition/page_transition.dart';
class cardApp extends StatefulWidget {
  const cardApp({super.key});

  @override
  State<cardApp> createState() => _cardAppState();
}

class _cardAppState extends State<cardApp> 
// with SingleTickerProviderStateMixin

{
  // final useremail = TextEditingController();
  // final password= TextEditingController();
  final formKey = GlobalKey<FormState>();

   
     
     

   
   

    
   
    
  bool isVisible= false;


  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
      home: Scaffold(
        
       
         appBar: AppBar(
          
          backgroundColor: Colors.blueGrey,
          title:Center(
            
         child: Column(
        
            
          children: [
            
          
            Text("Add card details"),
          ],  
          ) 
        ),
         ),
        
          
        body: Container(
         padding: EdgeInsets.all(10),
        color: Colors.white,
          

          child: SingleChildScrollView(
            
            child: Form(
              key: formKey,
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                 decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
      
                        ),
                   
                      ),
                
                height:38,
                width: double.infinity,
                child:SingleChildScrollView(
                child: 
             
              Row(
                
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

              
              Image.asset('images/card.jpg',
              height: 33,
              ),
               Image.asset('images/card.jpg',
              height: 33,
              ),
               Image.asset('images/card.jpg',
              height: 33,
              ),
                ],
              ),)
               ),
               SizedBox(
                height: 5,
               ),
              
            // Padding(padding: EdgeInsets.all(10),),

              Container(
             
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
      
                        ),
                   
                      ),
                    child: Column(
                      children: [

                     
                    
                    TextFormField(
                     // controller: useremail,
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "cardnumber is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                         
                         focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )
                         ),
                            hintText: "card number",
           
            ),
                    ),
                   


                      TextFormField(

                         //controller: useremail,
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Expiration";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        // constraints: BoxConstraints(
                        //   maxHeight: 50,
                        //   maxWidth: 150,
                        // ),
                         
                          filled: true,
                         
                         focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )
                         ),
                            hintText: "Expiration",
           
            ),
                      ),
                      TextFormField(
                      //  controller: useremail,
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "CVV";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        // constraints: BoxConstraints(
                        //   maxHeight:50,
                        //   maxWidth: 150,
                        // ),
                         
                           filled: true,
                         
                         focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )
                         ),
                            hintText: "CVV",
           
            ),

                      )
                   

                     ],
                    ),

                    
                    
                    
              ),
              SizedBox(
                height: 5,
              ),
               
                Container(
             
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
      
                        ),
                   
                      ),
                    child: Column(
                      children: [

                     
                    
                    TextFormField(
                    //  controller: useremail,
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "streetaddress is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                         
                         focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )
                         ),
                            hintText: "Street address",
           
            ),
                    ),
                   


                      TextFormField(

                        // controller: useremail,
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Apt or suite number is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        // constraints: BoxConstraints(
                        //   maxHeight: 50,
                        //   maxWidth: 150,
                        // ),
                         
                          filled: true,
                         
                         focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )
                         ),
                            hintText: "Apt or suite number",
           
            ),
                      ),
                      TextFormField(
                       // controller: useremail,
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "city is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        // constraints: BoxConstraints(
                        //   maxHeight:50,
                        //   maxWidth: 150,
                        // ),
                         
                           filled: true,
                         
                         focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )
                         ),
                            hintText: "City",
           
            ),

                      ),
                       TextFormField(
                       // controller: useremail,
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "state is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        // constraints: BoxConstraints(
                        //   maxHeight:50,
                        //   maxWidth: 150,
                        // ),
                         
                           filled: true,
                         
                         focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )
                         ),
                            hintText: "State",
           
            ),

                      ), TextFormField(
                       // controller: useremail,
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "ZIP code is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        // constraints: BoxConstraints(
                        //   maxHeight:50,
                        //   maxWidth: 150,
                        // ),
                         
                           filled: true,
                         
                         focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )
                         ),
                            hintText: "ZIP",
           
            ),

                      ),
                   

                     ],
                    ),

                    
                    
                    
              ),
                
                
                SizedBox(
                  height: 5,
                ),  

                 Container(
                  child: Column(
                    children: [

                   
          
         

         
              ElevatedButton(onPressed: (){


                
                if(formKey.currentState!.validate()){
                 

                }
                
              }, 
              style: ElevatedButton.styleFrom(
                fixedSize: Size(380, 50),
             // foregroundColor: Colors.amber,
                primary: Colors.blueAccent,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),                 
                ),  
              ),
              child: Text('Done',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),)),


              SizedBox(height: 10,),

               ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, 
              style: ElevatedButton.styleFrom(
                fixedSize: Size(380, 50),
             // foregroundColor: Colors.amber,
                primary: Colors.grey,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),                 
                ),  
              ),
              child: Text('CANCEL',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),)),


               ],

              
                  )),
                 
              
            ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}