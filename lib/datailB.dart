import 'package:flutter/material.dart';
import 'package:hamro_rental_app/book.dart';
class detail11App extends StatelessWidget {
  const detail11App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('Room details',
    style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),),
    body:SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
              children: [ 
              Image(image: AssetImage('images/house11.jpg'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room11.jpg'),
                height: 250,
                width: 250,
                ),
          Image(image: AssetImage('images/wash11.jpg'),
          height: 250,
          width: 250,) ,
              ],
            ),
      Text.rich(
        TextSpan(
          text: 'Contact Number:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          children: [TextSpan(
            text: ' 9814816029',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ), ),] ),),
       Text.rich(
        TextSpan(
          text: 'Room Rent:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          children: [TextSpan(
            text: ' 25000 ',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            )),] ),),
             ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>book11app()));
             },
             child: Text('Book'),
             style: ElevatedButton.styleFrom(
              primary: Colors.red,
              onPrimary: Colors.white,
              fixedSize: Size(100, 20),
             ),
             )
            
            ],),),),),);}}


            class detail12App extends StatelessWidget {
  const detail12App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('Room details',
    style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),),
    body:SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
              children: [ 
              Image(image: AssetImage('images/house12.jpg'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room12.jpg'),
                height: 250,
                width: 250,
                ),
          Image(image: AssetImage('images/wash12.jpg'),
          height: 250,
          width: 250,) ,
              ],
            ),
      Text.rich(
        TextSpan(
          text: 'Contact Number:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          children: [TextSpan(
            text: ' 9814816029',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ), ),] ),),
       Text.rich(
        TextSpan(
          text: 'Room Rent:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          children: [TextSpan(
            text: ' 25000 ',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            )),] ),),],),),),),);}}


            class detail13App extends StatelessWidget {
  const detail13App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('Room details',
    style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),),
    body:SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
              children: [ 
              Image(image: AssetImage('images/house13.jpg'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room13.jpg'),
                height: 250,
                width: 250,
                ),
          Image(image: AssetImage('images/wash13.jpg'),
          height: 250,
          width: 250,) ,
              ],
            ),
      Text.rich(
        TextSpan(
          text: 'Contact Number:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          children: [TextSpan(
            text: ' 9814816029',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ), ),] ),),
       Text.rich(
        TextSpan(
          text: 'Room Rent:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          children: [TextSpan(
            text: ' 25000 ',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            )),] ),),],),),),),);}}


            class detail14App extends StatelessWidget {
  const detail14App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('Room details',
    style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),),
    body:SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
              children: [ 
              Image(image: AssetImage('images/house14.jpg'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room14.jpg'),
                height: 250,
                width: 250,
                ),
          Image(image: AssetImage('images/wash14.jpg'),
          height: 250,
          width: 250,) ,
              ],
            ),
      Text.rich(
        TextSpan(
          text: 'Contact Number:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          children: [TextSpan(
            text: ' 9814816029',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ), ),] ),),
       Text.rich(
        TextSpan(
          text: 'Room Rent:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          children: [TextSpan(
            text: ' 25000 ',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            )),] ),),],),),),),);}}



            class detail15App extends StatelessWidget {
  const detail15App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('Room details',
    style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),),
    body:SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
              children: [ 
              Image(image: AssetImage('images/house15.png'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room15.jpg'),
                height: 250,
                width: 250,
                ),
          Image(image: AssetImage('images/wash15.jpg'),
          height: 250,
          width: 250,) ,
              ],
            ),
      Text.rich(
        TextSpan(
          text: 'Contact Number:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          children: [TextSpan(
            text: ' 9814816029',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ), ),] ),),
       Text.rich(
        TextSpan(
          text: 'Room Rent:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          children: [TextSpan(
            text: ' 25000 ',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            )),] ),),],),),),),);}}