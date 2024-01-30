import 'package:flutter/material.dart';

import 'package:hamro_rental_app/esewa2.dart';
class esewa1App extends StatefulWidget {
  const esewa1App({super.key});

  @override
  State<esewa1App> createState() => _esewa1AppState();
}

class _esewa1AppState extends State<esewa1App> {
   final formKey = GlobalKey<FormState>();

   
     
     

   
   

    
   
    
  bool isVisible= false;


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  backgroundColor: Colors.blueGrey,
  title: Center(
    child: 
    
      Text('Esewa payment')
    
  ),
),


      body: Container(
        

         padding: EdgeInsets.all(10),
        color: Colors.white,
          

          child: SingleChildScrollView(
            
            child: Form(
              key: formKey,
              child: Column(
                
                
                
            children: [
            
               Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellowAccent,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
      
                        ),
                ),
                child: Column(
                  children: [
                    Text("Please enter token sent to your phone carefully.You only have one attemp for security reasons.")
                  
                    
                  ],
                ),
                      ),

             
               SizedBox(
                height: 5,
               ),

              
            
              Container(
               // padding: EdgeInsets.all(10),
             
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        
                      ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("TOKEN",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                       
                   
                     
                    
                    TextFormField(
                     // controller: useremail,
                     keyboardType: TextInputType.number,
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Token is required";
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
                            hintText: "ENTER TOKEN",
           
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
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>esewa2App()));

                }
                
              }, 
              style: ElevatedButton.styleFrom(
                fixedSize: Size(340, 50),
             // foregroundColor: Colors.amber,
                primary: Colors.green,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),                 
                ),  
              ),
              child: Text('Continue Payment',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),)),
              SizedBox(
                height: 10,
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
                 )
             
                 
              
            ],
              ),
            ),
          ),
        ),
      
    );
  }
}
   