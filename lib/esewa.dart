import 'package:flutter/material.dart';
import 'package:hamro_rental_app/esewa1.dart';
class esewaApp extends StatefulWidget {
  const esewaApp({super.key});

  @override
  State<esewaApp> createState() => _esewaAppState();
}

class _esewaAppState extends State<esewaApp> {
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
                
                
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
      
                        ),
                   
                      ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                
                  Image.asset('images/esewa1.png',
                  height: 50,
                  ),
                  
                  Image.asset('images/esewa1.png',
                  height: 50,
                  ),
                  
                  Image.asset('images/esewa1.png',
                  height: 50,
                  ),
                      
                  ],
                ),
              ),

             
               SizedBox(
                height: 5,
               ),
              
             Padding(padding: EdgeInsets.all(15),),

              Container(
                padding: EdgeInsets.all(10),
             
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        // border: Border.all(
                        //   color: Colors.black,
                        //   width: 1.5,
      
                        // ),
                   
                      ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                        SizedBox(
                          height: 12,
                        ),
                        Text("esewa ID:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                        
                        SizedBox(height: 3,),
                   
                     
                    
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
                            hintText: "Mobile number",
           
            ),
                    ),
                     SizedBox(
                          height: 9,
                        ),
                    Text('Password:',
                    style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                    ),
                    SizedBox(height: 3,),
                   


                      TextFormField(

                         //controller: useremail,
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "password is required";
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
                         
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )
                         ),
                            hintText: "Password",
           
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
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>esewa1App()));
                 

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
              child: Text('LOGIN',
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
   