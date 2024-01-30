import 'package:flutter/material.dart';
import 'package:hamro_rental_app/card.dart';
import 'package:hamro_rental_app/esewa.dart';
import 'package:hamro_rental_app/khalti.dart';

class book11app extends StatefulWidget {
  const book11app({super.key});

  @override
  State<book11app> createState() => _book11appState();
}

class _book11appState extends State<book11app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: (AboutDialog()),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Container(
        child:Text('Confirm and pay',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),),),
      ),
      body: Container(
        
        color: Colors.grey,
        child:SingleChildScrollView(
        padding: EdgeInsets.all(10),
        // height: double.infinity,
        // width: double.infinity,
        
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
             
              child: Column(
                children: [
              
            
               
          Text('Choose how to pay',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
         
//           TextButton(
//   style: TextButton.styleFrom(
//     fixedSize: Size(300, 17),
    
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(5),
//       side: BorderSide(width: 1, color: Colors.black),
//     ),
//   ),
//   onPressed: () {},
//   child: Text('pay in full',style: TextStyle(
//     color: Colors.black,
//   ),),
// ),
                   TextFormField(
                    
                     keyboardType: TextInputType.none,
                     
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.circle_rounded),
                         // icon: const Icon(Icons.lock),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: "pay in full",
                        
                          ) ),
                   TextFormField(
                     keyboardType: TextInputType.none,
                      decoration: InputDecoration(
                         suffixIcon: Icon(Icons.circle_rounded),
                         // icon: const Icon(Icons.lock),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: "pay part now,part later",
        //                    prefix: Padding(
        //   padding: EdgeInsets.only(left: 8.0),
        //   child: Text('Hint Text 2'),
        // ),
                        
                          ) ),
                           ],
              ),
            ),
                          SizedBox(height: 3,),


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
          
           height:  170,
           width: double.infinity,
             child: Column(
          children: [
          Text('Price details',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('\$100 × 1 months'),
            Text('\$100 '),
            ],
          ),
          SizedBox(height: 2,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('services charge \$15'),
            Text('\$15 '),
            ],
          ),
          TextFormField(
          keyboardType: TextInputType.none,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Total.(USD)'),
            Text('\$115 '),
            ],
          ),
            
            

          ]
             ),

          ),
          SizedBox(height: 3,),
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
              children: [
                Text('Pay with',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>cardApp()));
                },
                
                style: ElevatedButton.styleFrom(
                  
                  
                  
                  fixedSize: Size(400, 60),
                  onPrimary: Colors.black,
                  primary: Colors.white,
                   shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  borderRadius: BorderRadius.circular(5),                 
                ), 
                 ),
                 
                 child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Image.asset('images/debit.jpg',
                  height: 45,
                  width: 45,),

                 Text('    Credit or debit card.........'),
                //  SizedBox(width:60),
                //  Icon(Icons.add),
                 
                 ]
                 ),
                 
                 ),
                  SizedBox(height: 5,),

                 ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>esewaApp()));
                 },
                
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(400, 60),
                  onPrimary: Colors.black,
                  primary: Colors.white,
                   shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  borderRadius: BorderRadius.circular(5),                 
                ), 
                 ),
                 child: Row(
                 // mainAxisAlignment: MainAxisAlignment.,
                  children: [
                  Image.asset('images/esewa.jpg',
                  height: 45,
                  width: 45,),

                 Text('    esewa...........'),
                //   SizedBox(width:180),
                  
                //  Icon(Icons.add),
                 ]
                 ),
                 
                 ),
                 SizedBox(height: 5,),

                 ElevatedButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (_)=>khaltiApp()));
                 },
                
                style: ElevatedButton.styleFrom(
                  
                  fixedSize: Size(400, 60),
                  onPrimary: Colors.black,
                  primary: Colors.white,
                   shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  borderRadius: BorderRadius.circular(5),                 
                ), 
                 ),
                 child: Row(children: [
                  Image.asset('images/khalti.png',
                  height: 45,
                  width: 45,),

                 Text('    khalti...........'),
                //   SizedBox(width:180),
                //  Icon(Icons.add),
                 ]
                 ),
                 
                 ),
                
            
              ],
            ),
          ),
        SizedBox(height: 5,),

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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Cancellation policy',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(height: 2,),
              Row(
                children: [
              
              Text('free cancellation for 48 hours.')
                ]),
              ]
            )),
                SizedBox(height: 3,),

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
                    children: [

                   

                Text('For confirmation',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),

                 ElevatedButton(onPressed: (){
             // Navigator.push(context, MaterialPageRoute(builder: (_)=>book11app()));
             
             },
             
             child: Text('Please select the payment option'),
             style: ElevatedButton.styleFrom(
              primary: Colors.red,
              onPrimary: Colors.white,
              fixedSize: Size(350, 50),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              )
             ),
             )
              ],
                  ),
                )
              
              ],
           
          
          
        ),
        
      ),)
      


    );
  }
}