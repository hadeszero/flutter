// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Category.dart';
import 'package:flutter_application_1/model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget{
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Category> Categories =[];
  List<Model> Models=[];

  void _infor(){
    Categories =Category.getCategory();
    Models =Model.getModels();
  }
  @override
  Widget build(BuildContext context) {
    _infor();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body:ListView(
        children: [  
          seach(),
          const SizedBox(height:40),
          category(),
          modes(),
          SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Text('Popular',style: TextStyle(fontSize: 25,color: Colors.blue),),
        
              ),
              SizedBox(height: 15,),
              Container(
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height:10 ,),
                  itemCount: Models.length,
                 shrinkWrap: true,
                 padding: EdgeInsets.only(left: 15,right: 15),
                  itemBuilder: (context,index){
                    return Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Models[index].boxColor,
                        
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 155,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(Models[index].nameicon),
                                fit: BoxFit.fill)
                            ),
                          ),
                          Text(Models[index].name,style: TextStyle(fontSize: 25),),
                          Text(Models[index].level + '||' + Models[index].tg)
                        ],
                      )
                        
                      
                      
                    );
                  },
                  
                    ),
              )
              
            ],
          )

        ],
      ),
    );
  }

  Column modes() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Recommendation \nfor Diet',style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10) ,
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder:(context, index) {
                  return Container(
                    width: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Models[index].boxColor.withOpacity(0.1),
                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(Models[index].nameicon),
                          fit: BoxFit.fill,)
                        ),                         
                       ),
                      Text(Models[index].name,style: TextStyle(fontSize: 20),),
                      Text(Models[index].level + '||' + Models[index].tg +'||'+ Models[index].calor),
                      SizedBox(height: 15,),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: 
                          [Models[index].colorview ? Colors.blue.withOpacity(0.5) : Colors.transparent,
                          Models[index].colorview ? Colors.pink.withOpacity(0.75) : Colors.transparent,
                          ]) ),
                          child: Center(child: Text('View',
                          style:TextStyle(
                            fontSize: 20,
                            color: Models[index].colorview ? Colors.black :Colors.white,
                            fontWeight: FontWeight.w400) ,)),
                      )

                      ],
                    ) ,
                  );
                }, 
                separatorBuilder: (context, index) => SizedBox(width: 15,),
                itemCount: Models.length),
            ),
          ],
        );
  }

  Container category() {
    return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text('Category',style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
              ),
              SizedBox(height:15,),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: Categories.length,
                  separatorBuilder: (context, index) => SizedBox(width: 20,),
                  itemBuilder: (context, index){
                    return Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Categories[index].boxColor,
                      ),
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(                               
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage(Categories[index].nameicon),
                                fit: BoxFit.fill,
                                                        ),
                            ),
                      ),
                      
                      Text(Categories[index].name,style: TextStyle(
                        fontSize: 18,
                      ),)],
                      ),
                    );
                  }),
              )
            ],
          ),
        );
  }

  Container seach() {
    return Container(         
          margin: EdgeInsets.only(top: 40,left: 15,right: 15),
          height: 50,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              color: Colors.blue.withOpacity(0.2),
              blurRadius: 40,
              spreadRadius: 0,
            )]
           ),
          child: TextField(              
            decoration: InputDecoration(
             filled: true,
             fillColor: Colors.white, 
             contentPadding: EdgeInsets.all(15),
             prefixIcon: Container(
               child: Padding(
                 padding:  EdgeInsets.all(10),
                 child: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.black,
                 ),
               ),
             ),
             hintText: 'Seach your favorite',
             hintStyle: TextStyle(fontSize: 18),
            //  suffixIcon: ,
            suffixIcon: Container(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 0.5,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset('assets/images/filter.png',
                      height: 100,
                      width: 45,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          
             border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
             ),
           
            ),
          ),
        );
  }

  AppBar appBar() {
    return AppBar(
      title:  Text('Breakfast',style: TextStyle(fontSize:20,color: Colors.black ),),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading:
      GestureDetector(
        onTap: (){},
      
      child :Container(
        margin: EdgeInsets.all(5),
        alignment: Alignment.center,
        child: SvgPicture.asset('assets/images/arrow.svg',
        height: 20,
        width: 20,),   
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
      ),),
      actions: [
        GestureDetector(
          onTap: (){ },
       
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: SvgPicture.asset('assets/images/arrow.svg',
          height: 20,
          width: 20,),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          
        ))
      ],



    );
  }
}