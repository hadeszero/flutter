import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false ,
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title:const Padding(
            padding:  EdgeInsets.only(left: 15),
            child:  Text('Home',style:TextStyle(fontSize:25,color: Colors.black ),),
          ),
        ),
        body: const Home() ,
      ),
      ),
      
  ),
  );
}
class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
   return Myhome();
  }

}
class Myhome extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const SizedBox(height: 5,),
    Container(
      width: double.infinity,
      decoration:const BoxDecoration(color: Colors.white),
     
    padding: const EdgeInsets.all(20),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('My Anime',style:TextStyle(fontSize:25,color: Colors.black ),),
          const SizedBox(height: 3,),
          const Text('RE:ZERO',style:TextStyle(fontSize: 40,color: Colors.black),),
          //
         const SizedBox(height: 20,),
         Container(
          padding:const EdgeInsets.all(5),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
          color: Colors.black87),
          
          child: const TextField(
            decoration: InputDecoration(
             border: InputBorder.none, 
             prefixIcon: Icon(Icons.image_outlined,color: Colors.red,),
             hintText: 'REM and EMILIA',
             hintStyle: TextStyle(color:Colors.blue,fontSize: 20 )
            ),
          )
         
         ),
         const SizedBox(height: 10,),
          Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10),
           child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Text('AMAGE',
               style: TextStyle(fontSize: 15,color: Colors.black38,fontWeight: FontWeight.bold),),
               const SizedBox(height: 10,),
               SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    promocard('assets/images/image1.jpg'),
                    promocard('assets/images/image1.jpg'),
                    promocard('assets/images/image2.jpg'),
                    promocard('assets/images/image2.jpg'),
                    ],
                ),
               ),
               Container(
                height: 200,
                decoration:   BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(                    
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/image1.jpg')),
                
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors:[
                        Colors.black.withOpacity(0.5),
                        Colors.white.withOpacity(0.5),
                      ] )
                  ),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text('REM',style:TextStyle(fontSize:20,color: Colors.blue,
                      ) ,),
                    ),
                  ),
                ),
                
               ),
             ],
           ),
         )
        ],
      ),

    )

    ],);
  }
}
Widget promocard(image){
  return AspectRatio(
    aspectRatio: 2/3,
    child: Container(
      margin:const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image)),
      ),
      child: Container(
         decoration: BoxDecoration(
        // color: Colors.orange,
         borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors:[
          Colors.pink.withOpacity(0.5),
          Colors.yellow.withOpacity(0.1)])
      ),
    ),));
}