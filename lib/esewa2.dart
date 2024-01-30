import 'package:flutter/material.dart';

class esewa2App extends StatefulWidget {
  const esewa2App({super.key});

  @override
  State<esewa2App> createState() => _esewa2AppState();
}

class _esewa2AppState extends State<esewa2App> {
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
            
               Text('User Info Confirmation',
               style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
               )),

             
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
                        Text("FULL NAME",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                       
                   SizedBox(height: 10,),
                     
                    
                    TextFormField(
                    
                     
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "name is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(

                        constraints: BoxConstraints(
                        maxHeight: 50,
                     maxWidth: double.infinity,
  
                             ),
                        filled: true,
                         
                         enabledBorder: OutlineInputBorder(
                          
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )
                         ),
                            hintText: "Enter a full name",
           
            ),
                    ),
                    SizedBox(height: 8,),
                     
                     Text("eSewa ID",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                       
                    SizedBox(height: 10,),
                     
                    
                    TextFormField(
                    
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "eSewa ID id required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                         constraints: BoxConstraints(
                        maxHeight: 50,
                     maxWidth: double.infinity,
  
                             ),
                         
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )
                         ),
                            hintText: "enter eSewa ID",
           
            ),
                    ),

                     SizedBox(height: 8,),
                     
                     Text("Contact No.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                       
                   
                      SizedBox(height: 10,),
                    
                    TextFormField(
                    
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "contact no required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                         constraints: BoxConstraints(
                        maxHeight: 50,
                     maxWidth: double.infinity,
  
                             ),
                         
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )
                         ),
                            hintText: "enter contact no.",
           
            ),
                    ),

                     SizedBox(height: 8,),
                     
                     Text("Address",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                       
                    SizedBox(height: 10,),
                     
                    
                    TextFormField(
                    
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "address is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                         constraints: BoxConstraints(
                        maxHeight: 50,
                     maxWidth: double.infinity,
  
                             ),
                         
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )
                         ),
                            hintText: "enter Address",
           
            ),
                    ),

                     SizedBox(height: 8,),
                     
                     Text("Email",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                       
                    SizedBox(height: 10,),
                     
                    
                    TextFormField(
                    
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "email is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                         constraints: BoxConstraints(
                        maxHeight: 50,
                     maxWidth: double.infinity,
  
                             ),
                         
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )
                         ),
                            hintText: "enter email",
           
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
                fixedSize: Size(340, 45),
             // foregroundColor: Colors.amber,
                primary: Colors.green,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),                 
                ),  
              ),
              child: Text('Confirm',
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
                fixedSize: Size(340, 45),
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
   