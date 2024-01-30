//import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:drop_down_search_field/drop_down_search_field.dart';
import 'package:hamro_rental_app/map.dart';
class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {

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
    return  Scaffold(
      body: Container(
        child:SingleChildScrollView(
           child:
            Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
               Text('search city'),
               
               
              DropDownSearchFormField(
                
                
                textFieldConfiguration: TextFieldConfiguration(
                  decoration: const InputDecoration(
                    constraints: BoxConstraints(
                      maxHeight: 45,
                      maxWidth: double.infinity
                    ),
                   
                    labelText: ' Search City',
                     border: OutlineInputBorder(
                     // borderRadius: BorderRadius.circular(4),
             // borderRadius: BorderRadius.only({}),
                borderSide: BorderSide(
                  
                  color: Colors.black, 
                  width: 2.0,
                ),
              ),
                  
                    
                    prefixIcon: Icon(Icons.location_on,color: Colors.red,),

                    suffixIcon: 

                      
                     Icon(Icons.search)
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
                child: const Text('Search'),
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
          )))))
    );
  }
}