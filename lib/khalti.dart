import 'package:flutter/material.dart';
import 'package:hamro_rental_app/esewa1.dart';
import 'package:hamro_rental_app/khalti1.dart';
class khaltiApp extends StatefulWidget {
  const khaltiApp({super.key});

  @override
  State<khaltiApp> createState() => _khaltiAppState();
}

class _khaltiAppState extends State<khaltiApp> {
   final formKey = GlobalKey<FormState>();

   
     
     

   
   

    
   
    
  bool isVisible= false;


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  backgroundColor: Colors.blueGrey,
  title: Center(
    child: 
    
      Text('Khalti payment')
    
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
                        color: Colors.deepPurple,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
      
                        ),
                   
                      ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                
                  Image.asset('images/khalti1.png',
                  height: 50
                  
                  ),
                  
                  Image.asset('images/khalti1.png',
                  height: 50,
                  ),
                  
                  Image.asset('images/khalti1.png',
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
                        Text("khalti ID:",
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
                          return "mobilumber is required";
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
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>khalti1App()));
                 

                }
                
              }, 
              style: ElevatedButton.styleFrom(
                fixedSize: Size(340, 50),
             // foregroundColor: Colors.amber,
                primary: Colors.purple,
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
   