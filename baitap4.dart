import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:SafeArea(child: Homepage()),
  ));
}
class Homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyHomepage();
  }
}
class _MyHomepage extends State<Homepage>{
  late PageController _pageController;
  void _onScroll(){
    print('hello');
  }
  @override
  void initState(){
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
         controller: _pageController,
        children: [
         makePage( page :1,image:'assets/images/image1.jpg'),
          makePage( page :2,image:'assets/images/image1.jpg'),
           makePage( page :3,image:'assets/images/image1.jpg'),
            makePage( page :4,image:'assets/images/image1.jpg'),
        
        ],
      ),
    );
  }
}

Widget makePage({page,image}){
  int totalpage=4;
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      image:DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.fill,),

    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:[Colors.black.withOpacity(0.5),
          Colors.white.withOpacity(0.2),] 
        )
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(page.toString(),style:TextStyle(fontSize: 30,color: Colors.black),),
                Text('/'+totalpage.toString(),style: TextStyle(fontSize:20,color: Colors.black ),)
              ],
            ),
            const Expanded(
              flex: 1,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 250,),
                    Align(),
                    Text('RE:ZERO',style: TextStyle(fontSize: 30,color: Colors.black),),
                    Row(
                      children: [
                        Text('REM',style:TextStyle(fontSize: 30,color: Colors.blue)),
                        SizedBox(width: 15,),
                        Icon(Icons.star,color: Colors.yellow,size: 17,),
                        Icon(Icons.star,color: Colors.yellow,size: 17,),
                        Icon(Icons.star,color: Colors.yellow,size: 17,),
                        Icon(Icons.star,color: Colors.yellow,size: 17,),
                        Icon(Icons.star,color: Colors.grey,size: 17,),
                        SizedBox(width: 10,),
                        Text('4.0(2002)',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    Text('Em gái song sinh của Ram, có mái tóc màu xanh da trời và mang dòng máu oni(quỷ). Cô có một sừng, thứ đem lại sức mạnh. Là người làm việc tại dinh thự, khả năng nấu ăn của Rem tốt hơn chị mình. Lúc đầu cô nghi ngờ Subaru vì cậu có mùi của phù thủy nên đã giết cậu 2 lần. Sau khi Subaru cứu Rem, cô dành tình cảm sâu đậm cho cậu, trở thành một trong những người đồng đội trung thành nhất. Khi Rem bị tấn công bởi hội Bishop of Gluttony (Giám mục của sự phàm ăn), tất cả dấu hiệu về sự tồn tại của cô đều bị xóa và chỉ mình Subaru nhớ cô. Một phần đặc biệt trong Arc 3 của cuốn tiểu thuyết, cho biết chuyện gì sẽ xảy ra nếu Subaru và Rem quyết định chạy trốn khỏi mọi thứ; họ sống hạnh phúc mãi về sau và có 2 đứa con, tất nhiên, đó chỉ là những tưởng tượng từ Rem.',
                          style:TextStyle(fontSize: 15,color: Colors.black54),)
                  ],
                          ),
              
        )]
          ,
        ),),
    ),
  );
  
}