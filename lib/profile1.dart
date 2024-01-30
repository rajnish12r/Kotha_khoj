import 'package:flutter/material.dart';
class profile1 extends StatefulWidget {
  const profile1({super.key});

  @override
  State<profile1> createState() => _profile1State();
}

class _profile1State extends State<profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile")
      ),
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.all(5),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.all(7),
               decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
      
                        ),
                   
                      ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
                children: [

             
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("images/owner1.jpg"),
                )
              ],
            ),
            Text("NAME",
            style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey
                      ),
            ),
             Text("xxxxxxx",
            style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
            ),
             SizedBox(height: 10,),
             Text("EMAIL",
            style: TextStyle(
                        fontSize: 15,
                         fontWeight: FontWeight.w400,
                        color: Colors.grey
                      ),
            ),
             Text("xxxxxx@gmail.com",
            style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
            ),
            SizedBox(height: 10,),
             Text("PHONE NUMBER",
            style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey
                      ),
            ),
             Text("98xxxxxxxx",
            style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
            ),
             SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                 Text("GENDER",
            style: TextStyle(
                         fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey
                        
                      ),
            ),
             Text("xxMale",
            style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
            ),

             ],
                ),

                 Column(
                  children: [
                 Text("DATE OF BIRTH",
            style: TextStyle(
                         fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey
                      ),
            ),
             Text("xx-xx-xxxx",
            style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
            ),

             ],
                ),

           
              ],
            )
            
   ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){


                 
             
                 
              }, 
              style: ElevatedButton.styleFrom(
                fixedSize: Size(340, 50),
             // foregroundColor: Colors.amber,
                primary: Colors.white,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),                 
                ),  
              ),
              child: Text('EDIT PROFILE',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),)),

          ],
        ),

      ),
    );
  }
}