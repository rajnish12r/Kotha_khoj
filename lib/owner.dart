import 'package:flutter/material.dart';
import 'package:hamro_rental_app/map.dart';
import 'package:hamro_rental_app/profile.dart';
class Ownerapp extends StatefulWidget {
  
  const Ownerapp({super.key});
   

  @override
  State<Ownerapp> createState() => _OwnerappState();
}

class _OwnerappState extends State<Ownerapp> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        // leading: Image.asset('images/rent12.png',
        // height: 20,
        // width: 20,),
        actions: [ IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>profileApp()));
        }, icon: Icon(Icons.person)),  ],
        title: Container(
          // height: double.infinity,
          // width: double.infinity,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Image.asset('images/rent12.png',
        height: 40,
        width: 40,),
            Text('Kotha ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
             Text('Khoj ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
         
            
          ]),
        ),
      ),
      body: Container(
        
        padding: EdgeInsets.all(10),
         child: SingleChildScrollView(
            
            child: Form(
              key: formKey,
        child: Column(
          children: [
            Container(
               height: 40,
              width: double.infinity,
               decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                         color: Colors.grey,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
      
                        ),
                   
                      ),
                      child: Column(
                        children: [
                          Text("Post your property details",
                          style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                          
                          )
                        ],
                      ),
            
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              height: 200,
              width: double.infinity,
               decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                         color: Colors.blue[900],
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
      
                        ),
                   
                      ),
            
              child: Column(
                children: [


                  Text("For property Owners",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Rent/Sell Your property for",
                   style: TextStyle(
                     color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    padding: EdgeInsets.all(2),
                    height: 22,
                    width: 40,
                    color: Colors.green,
                    child: Text("Free",
                     style: TextStyle(
                     color: Colors.white,
                    // fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                    ),
                  )
                    ],
                  ),
                  
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Image.asset("images/owner.png",
                      
                      height: 70,
                      width: 70,
                      )
                      ),
                      SizedBox(height: 5,),
                      Text("2 Lac+ tenants/buyers connection",
                       style: TextStyle(
                     color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                      )
                  
                  // Row(
                  //   children: [
                  //     Image.asset("images/house7.jpg",
                      
                  //     height: 30,
                  //     width: 30,)
                  //   ],
                  // )
                ],
              ),
            ),
              SizedBox(height: 5,),

            TextFormField(
                     // controller: useremail,
                    
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Name is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                         
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )
                         ),
                            hintText: "Enter Full Name",
           
            ),
                    ),
                      SizedBox(height: 5,),
                     TextFormField(
                     // controller: useremail,
                     keyboardType: TextInputType.number,
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "mobilenumber is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                         
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )
                         ),
                            hintText: "Enter Mobile Number ",
           
            ),
                    ),
                    SizedBox(height: 5,),

                    TextFormField(
                    
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "city is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                         
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )
                         ),
                            hintText: "Enter city Name",
           
            ),
                    ),
             SizedBox(
              height: 5,
            ),
            TextFormField(
                    
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "BHK type is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                         
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )
                         ),
                            hintText: "BHK TYPE",
           
            ),
                    ),

             SizedBox(
              height: 5,
            ),

             TextFormField(
                    
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "property type is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                         
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )
                         ),
                         hintText: 
                             "Property TYPE",
                            // hintStyle: TextStyle(
                            //   //fontSize: 8,
                            // )
           
            ),
                    ),
             SizedBox(
              height: 5,
            ),
            

             ElevatedButton(onPressed: (){
               if(formKey.currentState!.validate()){


               }
                 
                 

                
             },


               style: ElevatedButton.styleFrom(
                fixedSize: Size(340, 50),
             // foregroundColor: Colors.amber,
                primary: Colors.green[600],
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),                 
                ),  
              ),
              
              child: Text('save and contineue',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),)),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(onPressed: (){


                
               Navigator.pop(context);
                 
              }, 
              style: ElevatedButton.styleFrom(
                fixedSize: Size(340, 50),
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
        ),
      ),
         )),

    );
  }
}