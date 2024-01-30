import 'package:flutter/material.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:hamro_rental_app/map.dart';
class tenant extends StatefulWidget {
  const tenant({super.key});

  @override
  State<tenant> createState() => _tenantState();
}

class _tenantState extends State<tenant> {

   int tag1 = 0;
   int tag2 = 1;
   int tag3 = 2;


  // multiple choice value
 // List<String> tags = ['BEDROOM'];

  // list of string options
  List<String> options1 = [
    'BUY',
    'RENT',
    'COMMERCIAL'

  ];
    
     List<String> options2= [
    'ROOM',
    'APARTMENT',
    'OFFICE'

  ];
  List<String> options3 = [
    '1BHK',
    '2BHK',
    '3BHK',
    '4BHK',
    
  ];

  
  
 
 // String? user;
 // final usersMemoizer = C2ChoiceMemoizer<String>();

  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  //final formKey = GlobalKey<FormState>();
 // List<String> formValue = [];
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:  Text('Share Requirement'),
         backgroundColor: Colors.blue,
      //   actions: [
          
      //     IconButton(
      //       icon:  Icon(Icons.help_outline),
      //       onPressed: () => (context),
      //     ),
      //   ],
      ),
body:ListView(
  
  
                children: [
                  Container(
                   
                    color: Colors.grey,
                    child: Column(
                      children: [
                        
                  //     ],
                  //   ),
                  // )
                  

                   Container(
                    height: 130,
                    width: double.infinity,

                  padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
      
                        ),
                   
                      ),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [  
                      Padding(padding: EdgeInsets.all(10)),               
                  Text('I WANT TO'),
                   
                   ChipsChoice.single(
                      value: tag1,
                      onChanged: (val) => setState(() => tag1 = val),
                      choiceItems: C2Choice.listFrom(
                        source: options1,
                        value: (i, v) => i,
                        label: (i, v) => v,
                        tooltip: (i, v) => v,
                      ),
                      choiceCheckmark: true,
                      choiceStyle: C2ChipStyle.filled(
                        color: Colors.grey,
                        selectedStyle:  C2ChipStyle(
                          backgroundColor: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),]
                  )
                  ),

                   Container(
                    height: 130,
                    width: double.infinity,
                  padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
      
                        ),
                   
                      ),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [  
                      Padding(padding: EdgeInsets.all(10)),               
                  Text('PROPERTY TYPE'),
                   
                   ChipsChoice.single(
                      value: tag2,
                      onChanged: (val) => setState(() => tag2 = val),
                      choiceItems: C2Choice.listFrom(
                        source: options2,
                        value: (i, v) => i,
                        label: (i, v) => v,
                        tooltip: (i, v) => v,
                      ),
                      choiceCheckmark: true,
                      choiceStyle: C2ChipStyle.filled(
                        color: Colors.grey,
                        selectedStyle:  C2ChipStyle(
                          backgroundColor: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),]
                  )
                  ),
                Container(
                  padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
      
                        ),
                   
                      ),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [  
                      Padding(padding: EdgeInsets.all(10)),               
                  Text('BHK Type'),
                   
                   ChipsChoice.single(
                      value: tag3,
                      onChanged: (val) => setState(() => tag3 = val),
                      choiceItems: C2Choice.listFrom(
                        source: options3,
                        value: (i, v) => i,
                        label: (i, v) => v,
                        tooltip: (i, v) => v,
                      ),
                      choiceCheckmark: true,
                      choiceStyle: C2ChipStyle.filled(
                        color: Colors.grey,
                        selectedStyle:  C2ChipStyle(
                          backgroundColor: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),]
                  )
                  ),
                  

                
                 
                 
                 Container(
                  padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
      
                        ),
                   
                      ),
                  child:
                    Form(
              key: formKey,
              child: Column(
                  
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("PRICE RANGE"),
                      SizedBox(
                        height: 6,
                      ),
                  

                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       TextFormField(
                     // controller: useremail,
                     keyboardType: TextInputType.number,
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Minimum Price is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(
                           maxHeight: 50,
                           maxWidth: 150,
                         ),
                        
                        filled: true,
                         
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )
                         ),
                            hintText: "Minimum Pice",
           
            ),
                    ),
                     SizedBox(
                          height: 9,
                        ),
                   
                   


                      TextFormField(
                      keyboardType: TextInputType.number,
                         //controller: useremail,
                      
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Maximum Price is required";
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                         constraints: BoxConstraints(
                           maxHeight: 50,
                           maxWidth: 150,
                         ),
                         
                          filled: true,
                         
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )
                         ),
                            hintText: "Maximum Price ",
           
            ),
                      ),
                    
                  
                     ],
                    ),

                   ],
                  ),
                    )  
                    
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

                   
          
         

         
              ElevatedButton(onPressed: (){


                
                if(formKey.currentState!.validate()){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>mapApp()));
                 

               }
                
              }, 
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 50),
             // foregroundColor: Colors.amber,
                primary: Colors.blue,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),                 
                ),  
              ),
              child: Text('CONTINUE',
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
                fixedSize: Size(350, 50),
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
              

                  
                 
                 ]
                 
                 )
                  
                  )])
                  
         
    );
  }
}