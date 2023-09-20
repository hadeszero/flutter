import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        leading: IconButton(alignment: Alignment.centerLeft,
          icon: const Icon(Icons.menu,color: Colors.black,size: 25,),
          onPressed:(){} ), 
          title:const Padding(
            padding: EdgeInsets.only(left:60),
            child: Text('Home',style:TextStyle(fontSize: 25,color: Colors.black ),),
          ),
        actions: const [Padding(
          padding: EdgeInsets.only(right: 16,top: 5),
          child: ClipOval(
            child: Image(
              alignment: Alignment.center,
              image:AssetImage('assets/images/image1.jpg') ,
              fit: BoxFit.fill,
              height: 60,
              width: 80,
              ),
          ),
        )],
        ),
        
        body:Myapp1(),
      ),
      ),
  ));
}
class Myapp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      
      children: [
        SizedBox(height: 20,),
        
      
        Expanded(
          flex: 1,
            child:Column(children: [
              Padding(
                padding: EdgeInsets.only(left:15),
                child: Text('MY ANIME:',
                style:TextStyle(fontSize: 25,
                color: Colors.black,backgroundColor:Color.fromARGB(136, 244, 54, 241) ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text('RE:ZERO',
                style: TextStyle(fontSize: 35,color: Color.fromARGB(209, 0, 0, 0),
                ),),
              )
            ],),
         ),
     SizedBox(height: 1,),
     Expanded(
      flex: 1,
       child: Row(

        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize:MainAxisSize.max ,
         children: [
           Card(
            elevation: 0,
            color: Colors.white,
            shape: BeveledRectangleBorder(borderRadius: BorderRadius.vertical()),
            child: Padding(
              
              padding: EdgeInsets.only(left: 15),
              child: Text('REM',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 37, 33, 243)),),
            ),),
            SizedBox(width: 25,),
           Icon(
            
            Icons.heart_broken,
            size: 30,
            color: Colors.red,),
             SizedBox(width: 25,),
           Icon(
            
            Icons.heart_broken,
            size: 30,
            color: Colors.red,),
             SizedBox(width: 25,),
           Icon(
            
            Icons.heart_broken,
            size: 30,
            color: Colors.red,),
             SizedBox(width: 25,),
           Icon(
            
            Icons.heart_broken,
            size: 30,
            color: Colors.red,),
             SizedBox(width: 25,),
           Icon(
            
            Icons.heart_broken,
            size: 30,
            color: Colors.red,)
         ],
       ),
     ),
    Expanded(
      flex: 6,
      child: Column(
        children: [
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Image(image: AssetImage('assets/images/image1.jpg'),
                    fit: BoxFit.fill,
                    height: 200,
                    width: 175,),
            ),
             Padding(
              padding: EdgeInsets.only(left: 15),
              child: Image(image: AssetImage('assets/images/image1.jpg'),
                    fit: BoxFit.fill,
                    height: 200,
                    width: 175,),
            )
          ],),SizedBox(height: 10,),
        Row(children: [
         Padding(
           padding: EdgeInsets.only(left: 15),
           child: Center(
             child: Image(image: AssetImage('assets/images/image1.jpg'),
                   fit: BoxFit.fill,
                   width:368 ,
                   height: 250,),
           ),
         )
        ],)
        ],
     
      ),
      
      )
    ]);  }
}