import 'package:flutter/material.dart';
import 'package:hamro_rental_app/login.dart';
import 'package:hamro_rental_app/profile1.dart';
class profileApp extends StatefulWidget {
  const profileApp({super.key});

  @override
  State<profileApp> createState() => _profileAppState();
}

class _profileAppState extends State<profileApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account & Setting",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Container(
        color: Colors.grey,
       // padding: EdgeInsets.all(10),
        height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
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
               padding: EdgeInsets.all(10),
              height: 140,
              width: double.infinity,
              child: Row(
               
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('images/owner1.jpg'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                     mainAxisAlignment: MainAxisAlignment.center,
              //  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Tenants Or Owner",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 5,),
                      Text("98########")
                    ],
                  )
                ],
                
              ),

              
            ),
            Container(
              padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
      
                        ),
                   
                      ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("ACCOUNT",
                style: TextStyle(
                        fontSize:15,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>profile1()));
                },
                
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 50),
                  onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                )),
                child: Row(
                  children: [
  
                Icon(Icons.person_rounded),
                SizedBox(width: 5,),
                Text("Profile",
                 style: TextStyle(
                        fontSize:15,
                        fontWeight: FontWeight.bold,
                      ),
              )
               ],
                )
              ),
               ElevatedButton(onPressed: (){},
                
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 50),
                  onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                )),
                child: Row(
                  children: [
  
                Icon(Icons.business),
                SizedBox(width: 5,),
                Text("Business Profile",
                 style: TextStyle(
                        fontSize:15,
                        fontWeight: FontWeight.bold,
                      ),
              )
               ],
                )
              ),

              ElevatedButton(onPressed: (){},
                
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 50),
                  onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                )),
                child: Row(
                  children: [
  
                Icon(Icons.save),
                SizedBox(width: 5,),
                Text("Saved Address",
                 style: TextStyle(
                        fontSize:15,
                        fontWeight: FontWeight.bold,
                      ),
              )
               ],
                )
              ),
              
             
              ]),
            ),

             Container(
              padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
      
                        ),
                   
                      ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("HELP & LEGAL",
                style: TextStyle(
                        fontSize:15,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(onPressed: (){},
                
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 50),
                  onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                )),
                child: Row(
                  children: [
  
                Icon(Icons.call),
                SizedBox(width: 5,),
                Text("Emergency Support",
                 style: TextStyle(
                        fontSize:15,
                        fontWeight: FontWeight.bold,
                      ),
              )
               ],
                )
              ),
               ElevatedButton(onPressed: (){},
                
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 50),
                  onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                )),
                child: Row(
                  children: [
  
                Icon(Icons.help),
                SizedBox(width: 5,),
                Text("Help",
                 style: TextStyle(
                        fontSize:15,
                        fontWeight: FontWeight.bold,
                      ),
              )
               ],
                )
              ),

              ElevatedButton(onPressed: (){},
                
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 50),
                  onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                )),
                child: Row(
                  children: [
  
                Icon(Icons.support),
                SizedBox(width: 5,),
                Text("Support Requests",
                 style: TextStyle(
                        fontSize:15,
                        fontWeight: FontWeight.bold,
                      ),
              )
               ],
                )
              ),

              ElevatedButton(onPressed: (){},
                
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 50),
                  onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                )),
                child: Row(
                  children: [
  
                Icon(Icons.policy),
                SizedBox(width: 5,),
                Text("Policies",
                 style: TextStyle(
                        fontSize:15,
                        fontWeight: FontWeight.bold,
                      ),
              )
               ],
                )
              ),
              
             
              ]),
            ),

             Container(
              padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
      
                        ),
                   
                      ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("MORE",
                style: TextStyle(
                        fontSize:15,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(onPressed: (){},
                
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 50),
                  onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                )),
                child: Row(
                  children: [
  
                Icon(Icons.notification_add),
                SizedBox(width: 5,),
                Text("Notification",
                 style: TextStyle(
                        fontSize:15,
                        fontWeight: FontWeight.bold,
                      ),
              )
               ],
                )
              ),
               ElevatedButton(onPressed: (){},
                
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 50),
                  onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                )),
                child: Row(
                  children: [
  
                Icon(Icons.star),
                SizedBox(width: 5,),
                Text("Rates",
                 style: TextStyle(
                        fontSize:15,
                        fontWeight: FontWeight.bold,
                      ),
              )
               ],
                )
              ),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>loginApp()));
              },
                
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 50),
                  onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                )),
                child: Row(
                  children: [
  
                Icon(Icons.logout_rounded),
                SizedBox(width: 5,),
                Text("Log out",
                 style: TextStyle(
                        fontSize:15,
                        fontWeight: FontWeight.bold,
                      ),
              )
               ],
                )
              ),
              
             
              ]),
            )
          ],

          
        ),
      ),
      ),
    );
  }
}