import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text('Home',style: TextStyle(fontSize: 25,color: Colors.black),),
            leading: IconButton(
              onPressed: (){},
               icon:const Icon(Icons.menu,size: 25,color: Colors.black,),),
        ),
        body: const baitap() ,
      )),
  ));
}
// ignore: camel_case_types
class baitap extends StatelessWidget{
  const baitap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
         padding:const EdgeInsets.only(left: 15) ,
         child: Column(         
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const SizedBox(height: 15,),
           const Text('Find Your',style: TextStyle(fontSize:25,color: Colors.black ),),
           const SizedBox(height: 5,),
           const Text('Inspirasion',style: TextStyle(fontSize: 40,color: Colors.black),),
           const SizedBox(height: 10,),
           Container(
            height: 50,
            decoration:BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20)
            ),
            margin: const EdgeInsets.only(right: 15),                   
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                  hintText:'search your name:'
                ),
            
              ),
            ),         
           ),
           const SizedBox(height: 20,),
          Container(
            padding:EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Promotoday',style:TextStyle(fontSize: 20,color: Colors.black) ,),
                const SizedBox(height: 5,),
                Container(
                  height: 200,
                  color: Colors.white,
                  child:ListView(
                    scrollDirection:Axis.horizontal ,
                    children: [
                      promoimage('assets/images/image1.jpg'),
                      promoimage('assets/images/image1.jpg'),
                      promoimage('assets/images/image2.jpg'),
                      promoimage('assets/images/image2.jpg'),

                    ],
                  ),
                )

              ]),
          ),
          Container(
            margin: const EdgeInsets.only(right: 15),
            height: 220,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('assets/images/image1.jpg'),
                fit: BoxFit.fill)
            ),
            child:Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text('REM',style: TextStyle(fontSize: 25,color: Colors.blue[600]),)),
            ) ,
          )
          ],
         ),
        )
      ],
    );
  }
}
Widget promoimage(image) {
  return AspectRatio(
    aspectRatio:2/3,
    child: Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image:  DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(image)),       
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:
            [Colors.pink.withOpacity(0.5),
            Colors.yellow.withOpacity(0.2),]
            )
        ),
      ),
    ),
    

     
  );
}
