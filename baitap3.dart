import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text('HOME',style: TextStyle(fontSize: 30,color: Colors.black),),
          leading: const TextField(
            decoration: InputDecoration(
              icon: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.menu,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ),

        ),
        body:baitap1() ,
      )),
  ));
}
class baitap1  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 15,),
        Container(
          margin: EdgeInsets.all(15),
          child: const Column(
            children: [
              Text('Find your anime',style:TextStyle(fontSize: 25,color: Colors.grey),),
              SizedBox(height: 5,),
              Padding(
                padding: EdgeInsets.all(2.0),
                child: Text('MY ANIME',style: TextStyle(fontSize: 40,color: Colors.black),),
              ),

            ],
          ),
        ),
        
        Container(   
           margin: const EdgeInsets.all(5),          
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,         ),     
          child: Row(
            children: [
              const SizedBox(height: 15,),
              IconButton(
                onPressed: (){},
                icon: const Icon(
                 Icons.search,
                 color: Colors.black,
                 size: 25, 
                )),
              const SizedBox(height: 10,),
              const Text('seach your anime',style: TextStyle(fontSize: 25,color: Colors.black),)
            ],
          ),
         
        ),
        Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
         margin: const EdgeInsets.all(15),
         height: 200,
         child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            animeimage('assets/images/image1.jpg'),
            animeimage('assets/images/image2.jpg'),
            animeimage('assets/images/image1.jpg'),
            animeimage('assets/images/image2.jpg'),
          ],
         )
         , 
        ),
       Container(
        height: 200,
        margin: const EdgeInsets.only(left: 15,right: 15),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage('assets/images/image2.jpg'),
            fit: BoxFit.fill,
            )
        ),
       ) 
      ],
    );
  }

}
Widget animeimage(image){
  return AspectRatio(
    aspectRatio: 2/3,
    child:Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,),
      ),
      child:Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin:Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pink.withOpacity(0.5),
            Colors.yellow.withOpacity(0.2),])
        ),

      ),
      
    ),
     
    
    );
}