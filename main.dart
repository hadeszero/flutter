import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:SafeArea(
      child: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.blueGrey,
          title:const Center(child:  Text('Home',style: TextStyle(fontSize: 30),)),
        ), 
        body: Myapp(),),
    ) ,
  ));
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          child: Card(
            shape:BeveledRectangleBorder(borderRadius:BorderRadius.circular(10) ) ,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(children: [
              ClipOval(
                child: Container(
                  width: 60,
                  height: 40,
                  decoration: 
                  const BoxDecoration(image: DecorationImage(
                    image: AssetImage('assets/images/image1.jpg'),
                    fit: BoxFit.cover)
                     ),
                     ),
              ),
            const SizedBox(width: 20,),
            const Expanded(
              flex: 2,
              child:Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text('My song ',style: TextStyle(fontSize: 20),),
               SizedBox(height: 10,),
               Text('Re:zero',style: TextStyle(fontSize: 15),)
            ]),),
            const Expanded(
              flex:1 ,
              child:Row(
              children: [Icon(
                Icons.add_a_photo,
                color: Colors.green,
                size: 35,)],
            )),
            const Expanded(
              flex: 1,
              child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Icon(
                    Icons.heart_broken,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              // SizedBox(height: 10,),
              Center(child: Text('4',style: TextStyle(fontSize: 10),))
              ],
            ))
            // const Icon(
            //   Icons.ads_click,
            //   color: Colors.green,
            //   size: 30,
            // )
            ]),
          ),
          ),
         //muc 2 
        ),
        Container(
          color: Colors.blue,
          child: Card(
            shape:BeveledRectangleBorder(borderRadius:BorderRadius.circular(10) ) ,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(children: [
              ClipOval(
                child: Container(
                  width: 60,
                  height: 40,
                  decoration: 
                  const BoxDecoration(image: DecorationImage(
                    image: AssetImage('assets/images/image1.jpg'),
                    fit: BoxFit.cover)
                     ),
                     ),
              ),
            const SizedBox(width: 20,),
            const Expanded(
              flex: 2,
              child:Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text('My song ',style: TextStyle(fontSize: 20),),
               SizedBox(height: 10,),
               Text('Re:zero',style: TextStyle(fontSize: 15),)
            ]),),
            const Expanded(
              flex:1 ,
              child:Row(
              children: [Icon(
                Icons.add_a_photo,
                color: Colors.green,
                size: 35,)],
            )),
            const Expanded(
              flex: 1,
              child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Icon(
                    Icons.heart_broken,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              // SizedBox(height: 10,),
              Center(child: Text('4',style: TextStyle(fontSize: 10),))
              ],
            ))
            // const Icon(
            //   Icons.ads_click,
            //   color: Colors.green,
            //   size: 30,
            // )
            ]),
          ),
          ),
          
        ),
      ],
    );
  }

}