import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';

class selection extends StatefulWidget {
  const selection({super.key});

  @override
  State<selection> createState() => _selectionState();
}

class _selectionState extends State<selection> {
   int tag = 3;

  // multiple choice value
  List<String> tags = ['Education'];

  // list of string options
  List<String> options = [
    'News',
    'Entertainment',
    'Politics',
    'Automotive',
    'Sports',
    'Education',
    'Fashion',
    'Travel',
    'Food',
    'Tech',
    'Science',
  ];

  String? user;
  final usersMemoizer = C2ChoiceMemoizer<String>();

  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final formKey = GlobalKey<FormState>();
  List<String> formValue = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
         title: const Text('Flutter ChipsChoice'),
        actions: <Widget>[
          
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: () => (context),
          ),
        ],
      ),
body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            
            
            Expanded(
              child: ListView(
                addAutomaticKeepAlives: true,
                children: <Widget>[
                  ChipsChoice<String>.multiple(
                      value: tags,
                      onChanged: (val) => setState(() => tags = val),
                      choiceItems: C2Choice.listFrom<String, String>(
                        source: options,
                        value: (i, v) => v,
                        label: (i, v) => v,
                        tooltip: (i, v) => v,
                      ),
                      choiceCheckmark: true,
                      choiceStyle: C2ChipStyle.outlined(),)
              

                  
                 
                 ]))]))

    );
  }
}