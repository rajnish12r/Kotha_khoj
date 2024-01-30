import 'package:flutter/material.dart';
class detailApp extends StatelessWidget {
  const detailApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('Flat details',
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
              Image(image: AssetImage('images/house1.png'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room1.jpg'),
                height: 250,
                width: 250,
                ),
                  SizedBox(width: 10,),
                Image(image: AssetImage('images/room1.1.jpg',
                ),
                height: 250,
                width: 250,),
               SizedBox(width: 10,),
          Image(image: AssetImage('images/kitchen1.avif'),
          height: 250,
          width: 250,) ,
           SizedBox(width: 10,),
          Image(image: AssetImage('images/wash1.jpg'),
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
          text: 'Room Rent1:',
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
            )),
           
            ] ),),
            ElevatedButton(onPressed: (){},
             child: Text('Book'),
             style: ElevatedButton.styleFrom(
              fixedSize: Size(50, 20),
             ),
             )
            ],),),),),);}}


            class detail2App extends StatelessWidget {
  const detail2App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('Flat details',
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
              Image(image: AssetImage('images/house2.jpg'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room2.jpg'),
                height: 250,
                width: 250,
                ),
                  SizedBox(width: 10,),
                Image(image: AssetImage('images/room2.1.jpg',
                ),
                height: 250,
                width: 250,),
               SizedBox(width: 10,),
          Image(image: AssetImage('images/kitchen2.jpg'),
          height: 250,
          width: 250,) ,
           SizedBox(width: 10,),
          Image(image: AssetImage('images/wash2.jpg'),
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


            class detail3App extends StatelessWidget {
  const detail3App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('Flat details',
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
              Image(image: AssetImage('images/house3.jpg'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room3.jpg'),
                height: 250,
                width: 250,
                ),
                  SizedBox(width: 10,),
                Image(image: AssetImage('images/room3.1.jpg',
                ),
                height: 250,
                width: 250,),
               SizedBox(width: 10,),
          Image(image: AssetImage('images/kitchen3.jpg'),
          height: 250,
          width: 250,) ,
           SizedBox(width: 10,),
          Image(image: AssetImage('images/wash3.jpg'),
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


            class detail4App extends StatelessWidget {
  const detail4App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('Flat details',
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
              Image(image: AssetImage('images/house4.jpg'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room4.jpg'),
                height: 250,
                width: 250,
                ),
                  SizedBox(width: 10,),
                Image(image: AssetImage('images/room4.1.jpg',
                ),
                height: 250,
                width: 250,),
               SizedBox(width: 10,),
          Image(image: AssetImage('images/kitchen4.jpg'),
          height: 250,
          width: 250,) ,
           SizedBox(width: 10,),
          Image(image: AssetImage('images/wash4.jpg'),
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


            class detail5App extends StatelessWidget {
  const detail5App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('flat details',
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
              Image(image: AssetImage('images/house5.jpg'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room5.jpg'),
                height: 250,
                width: 250,
                ),
                  SizedBox(width: 10,),
                Image(image: AssetImage('images/room5.1.jpg',
                ),
                height: 250,
                width: 250,),
               SizedBox(width: 10,),
          Image(image: AssetImage('images/kitchen5.jpg'),
          height: 250,
          width: 250,) ,
           SizedBox(width: 10,),
          Image(image: AssetImage('images/wash5.jpg'),
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


            class detail6App extends StatelessWidget {
  const detail6App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('flat details',
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
              Image(image: AssetImage('images/house6.jpg'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room6.jpg'),
                height: 250,
                width: 250,
                ),
                  SizedBox(width: 10,),
                Image(image: AssetImage('images/room6.1.jpg',
                ),
                height: 250,
                width: 250,),
               SizedBox(width: 10,),
          Image(image: AssetImage('images/kitchen6.jpg'),
          height: 250,
          width: 250,) ,
           SizedBox(width: 10,),
          Image(image: AssetImage('images/wash6.jpg'),
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


            class detail7App extends StatelessWidget {
  const detail7App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('flat details',
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
              Image(image: AssetImage('images/house7.jpg'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room7.jpg'),
                height: 250,
                width: 250,
                ),
                  SizedBox(width: 10,),
                Image(image: AssetImage('images/room7.1.jpg',
                ),
                height: 250,
                width: 250,),
               SizedBox(width: 10,),
          Image(image: AssetImage('images/kitchen7.jpg'),
          height: 250,
          width: 250,) ,
           SizedBox(width: 10,),
          Image(image: AssetImage('images/wash7.jpg'),
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


            class detail8App extends StatelessWidget {
  const detail8App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('flat details',
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
              Image(image: AssetImage('images/house8.jpg'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room8.jpg'),
                height: 250,
                width: 250,
                ),
                  SizedBox(width: 10,),
                Image(image: AssetImage('images/room8.1.jpg',
                ),
                height: 250,
                width: 250,),
               SizedBox(width: 10,),
          Image(image: AssetImage('images/kitchen8.jpg'),
          height: 250,
          width: 250,) ,
           SizedBox(width: 10,),
          Image(image: AssetImage('images/wash8.jpg'),
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


            class detail9App extends StatelessWidget {
  const detail9App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('flat details',
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
              Image(image: AssetImage('images/house9.jpg'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room9.jpg'),
                height: 250,
                width: 250,
                ),
                  SizedBox(width: 10,),
                Image(image: AssetImage('images/room9.1.jpg',
                ),
                height: 250,
                width: 250,),
               SizedBox(width: 10,),
          Image(image: AssetImage('images/kitchen9.jpg'),
          height: 250,
          width: 250,) ,
           SizedBox(width: 10,),
          Image(image: AssetImage('images/wash9.jpg'),
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


            class detail10App extends StatelessWidget {
  const detail10App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text('flat details',
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
              Image(image: AssetImage('images/house10.jpg'),
                height: 250,
                width: 250,),
                  SizedBox(width: 10,),
                   Image(image: AssetImage('images/room10.jpg'),
                height: 250,
                width: 250,
                ),
                  SizedBox(width: 10,),
                Image(image: AssetImage('images/room10.1.jpg',
                ),
                height: 250,
                width: 250,),
               SizedBox(width: 10,),
          Image(image: AssetImage('images/kitchen10.jpg'),
          height: 250,
          width: 250,) ,
           SizedBox(width: 10,),
          Image(image: AssetImage('images/wash10.jpg'),
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


       