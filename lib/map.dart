//import 'dart:async';
//import 'dart:ui';
//import 'dart:ui' as ui;
//import 'dart:html';
//import 'dart:io';
//import 'package:flutter/services.dart';
// import 'package:dropdownfield2/dropdownfield2.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hamro_rental_app/datailB.dart';
import 'package:hamro_rental_app/detail.dart';
import 'package:drop_down_search_field/drop_down_search_field.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:hamro_rental_app/datailB.dart';
//import 'package:hamro_rental_app/detail.dart';
class mapApp extends StatefulWidget {
  const mapApp({super.key});

  @override
  State<mapApp> createState() => _mapAppState();
}

class _mapAppState extends State<mapApp> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _dropdownSearchFieldController = TextEditingController();

  String? _selectedcity;
  SuggestionsBoxController suggestionBoxController = SuggestionsBoxController();
  static final List<String> city = [
  
    'Gwarko',
    'koteshwar',
    'tinkune',
    'Gaushala',
    'chahbel',
    'chakrapath',
    'satdobato',
    'balkhu',
    'kalanti',
   
  ];
   static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(city);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.lightBlue[100],
        title: Container(
          // height: 70,

          //  decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //                color: Colors.white,
          //               border: Border.all(
          //                 color: Colors.black,
          //                 width: 1.5,
      
          //               ),
                   
          //             ),
          child:SingleChildScrollView(
            scrollDirection: Axis.horizontal,

         // padding: EdgeInsets.all(1),
          child:
            Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //mainAxisSize: MainAxisSize.min,
            children: [
             
               
               
              DropDownSearchFormField(
                
                
                textFieldConfiguration: TextFieldConfiguration(
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    constraints: BoxConstraints(
                      maxHeight: 45,
                      maxWidth: 200,
                    ),
                   
                    labelText: ' Search Desination',
                     border: OutlineInputBorder(
            //          borderRadius: BorderRadius.circular(4),
            //  borderRadius: BorderRadius.only({}),
                borderSide: BorderSide(
                  
                  color: Colors.black, 
                  width: 2.0,
                ),
              ),
                  
                    
                    prefixIcon: Icon(Icons.location_on,color: Colors.red,),

                    // suffixIcon: 

                      
                    //  Icon(Icons.search)
                    ),
                  controller: _dropdownSearchFieldController,
                ),
               suggestionsCallback: (pattern) {
                  return getSuggestions(pattern);
                },
                itemBuilder: (context, String suggestion) {
                  return ListTile(
                    title: Text(suggestion),
                  );
                },
                itemSeparatorBuilder: (context, index) {
                  return const Divider();
                },
                transitionBuilder: (context, suggestionsBox, controller) {
                  return suggestionsBox;
                },
                onSuggestionSelected: (String suggestion) {
                  _dropdownSearchFieldController.text = suggestion;
                },
                suggestionsBoxController: suggestionBoxController,
                validator: (value) => value!.isEmpty ? 'Please select a city' : null,
                onSaved: (value) => _selectedcity = value,
                displayAllSuggestionWhenTap: true,
                
              ),

                ElevatedButton(
                child: Icon(Icons.search),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(40, 45),
                  primary: Colors.white,
                 
                  side: BorderSide(
                    color: Colors.black
                  ),
                  shape: RoundedRectangleBorder(
                    
                  )
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>mapApp()));
                    _formKey.currentState!.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('You Search at $_selectedcity '),
                      ),
                    );
                  }
                },
              )

             
            ]
          ))))
            // DropDownField(
            //   controller: citiesSelected,
            //   hintText: "select city",
            //   enabled: true,
            //   items: cities,
            //   onValueChanged: (value) {
            //     setState(() {
            //       selectCity= value;
            //     });
            //   },
            // ),
            
            // TextFormField(
            //            decoration:InputDecoration(
            //             constraints: BoxConstraints(
            //               maxHeight: 50,
            //               maxWidth: double.infinity,
            //             ),
                
            //         enabledBorder: OutlineInputBorder(
                      
            //           borderRadius: BorderRadius.circular(15),
            //         ),
            //         hintText: 'Search Destination',
            //         hintStyle: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 18,
            //           color: Colors.black
            //         ),
                    
            //         prefixIcon: Icon(Icons.location_on,color: Colors.red,),
            //         suffixIcon: Icon(Icons.search),
            //       ),
    
            //         ),
                   
          // ],
          
          
        ),
        
      ),

      


      body:Container(

       
        
        width: double.infinity, 
         height: double.infinity,
        // //
      
       child:GoogleMap(initialCameraPosition: CameraPosition(target: LatLng(27.65, 85.32),
         
         zoom: 13),
mapType: MapType.normal,


         markers: {
         Marker(markerId: MarkerId('1'),
         position: LatLng(27.65, 85.32),
         infoWindow: InfoWindow(
          title: 'Flat1',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail11App();
          },);},),


           Marker(markerId: MarkerId('2'),
         position: LatLng(27.62, 85.4),
         infoWindow: InfoWindow(
          title: 'Flat2',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail2App();
          },);},),


           Marker(markerId: MarkerId('3'),
         position: LatLng(27.575, 86.4),
         infoWindow: InfoWindow(
          title: 'Flat3',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail3App();
          },);},),


           Marker(markerId: MarkerId('4'),
         position: LatLng(27.65, 85.35),
         infoWindow: InfoWindow(
          title: 'Flat4',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail4App();
          },);},),


           Marker(markerId: MarkerId('5'),
         position: LatLng(27.63, 85.29),
         infoWindow: InfoWindow(
          title: 'Flat5',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail5App();
          },);},),


           Marker(markerId: MarkerId('6'),
         position: LatLng(27.61, 85.3),
         infoWindow: InfoWindow(
          title: 'Flat6',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail6App();
          },);},),


           Marker(markerId: MarkerId('7'),
         position: LatLng(27.58, 85.33),
         infoWindow: InfoWindow(
          title: 'Flat7',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail7App();
          },);},),


           Marker(markerId: MarkerId('8'),
         position: LatLng(27.66, 85.37),
         infoWindow: InfoWindow(
          title: 'Flat8',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail8App();
          },);},),


           Marker(markerId: MarkerId('9'),
         position: LatLng(27.66, 85.28),
         infoWindow: InfoWindow(
          title: 'Flat9',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail9App();
          },);},),


           Marker(markerId: MarkerId('10'),
         position: LatLng(27.52, 85.39),
         infoWindow: InfoWindow(
          title: 'Flat10',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail10App();
          },);},),


           Marker(markerId: MarkerId('11'),
         position: LatLng(27.71, 85.32),
         infoWindow: InfoWindow(
          title: 'Room11',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail11App();
          },);},),

           Marker(markerId: MarkerId('12'),
         position: LatLng(27.66, 85.31),
         infoWindow: InfoWindow(
          title: 'Room12',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail12App();
          },);},),
           Marker(markerId: MarkerId('13'),
         position: LatLng(27.64, 85.25),
         infoWindow: InfoWindow(
          title: 'Room13',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail13App();
          },);},),

           Marker(markerId: MarkerId('14'),
         position: LatLng(27.62, 85.33),
         infoWindow: InfoWindow(
          title: 'Room14',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail14App();
          },);},),


           Marker(markerId: MarkerId('15'),
         position: LatLng(27.6, 85.3),
         infoWindow: InfoWindow(
          title: 'Room15',
         ),
         onTap:(){
          showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return detail15App();
          },);},),

         },
         
         
        //   ),
        //     )
        //   ],
        // )
          
        
       ),
          
        )
      
    );
  }
}


// String selectCity ="";
// final citiesSelected = TextEditingController();

// List<String> cities = [
//   'gwarko',
//   "kow",
//   "ftof"
// ];