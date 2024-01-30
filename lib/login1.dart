import 'package:flutter/material.dart';
import 'package:hamro_rental_app/map.dart';
import 'package:hamro_rental_app/owner.dart';
import 'package:hamro_rental_app/profile.dart';
import 'package:hamro_rental_app/tentant1.dart';
class login1app extends StatefulWidget {
  const login1app({super.key});

  @override
  State<login1app> createState() => _login1appState();
}

class _login1appState extends State<login1app> {
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
            // mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
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
        child: Column(
          children: [
            
             Container(
              height: 300,
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
                   Text("And",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 2,),
                   Text("For Tenant",
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
                      ),
                       SizedBox(height: 5,),
                      Text("1 Lac+ Owner connection",
                       style: TextStyle(
                     color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                      ),

                  
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
            SizedBox(
              height: 6,
            ),
            

             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (_)=>Ownerapp()));
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
              
              child: Text('Owner',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),)),
              SizedBox(height: 10,),

               ElevatedButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>tenant()));
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
              
              child: Text('Tenant',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),)),
          
          ],
        ),
      ),


    );
  }
}