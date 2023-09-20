import 'package:flutter/material.dart';
import 'package:flutter_application_1/Fadeanimation.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Baitap5()),
  ));
}
class Baitap5 extends StatefulWidget{
  dynamic page;
  @override
  State<StatefulWidget> createState() {
   return mybaitap5();
  }

}
// ignore: camel_case_types
class mybaitap5 extends State<Baitap5>{
  void onclick(){}

  late PageController _pageController;
  @override
  void initState(){
    super.initState();
   _pageController = PageController(
    initialPage: 0,
   )..addListener(() {onclick();});

  }
  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
             makepage(
              page: 1,
              image : 'assets/images/image1.jpg',
              title : 'REM',
              descrice :'Em gái song sinh của Ram, có mái tóc màu xanh da trời và mang dòng máu oni(quỷ). Cô có một sừng, thứ đem lại sức mạnh. Là người làm việc tại dinh thự, khả năng nấu ăn của Rem tốt hơn chị mình. Lúc đầu cô nghi ngờ Subaru vì cậu có mùi của phù thủy nên đã giết cậu 2 lần. Sau khi Subaru cứu Rem, cô dành tình cảm sâu đậm cho cậu, trở thành một trong những người đồng đội trung thành nhất. Khi Rem bị tấn công bởi hội Bishop of Gluttony (Giám mục của sự phàm ăn), tất cả dấu hiệu về sự tồn tại của cô đều bị xóa và chỉ mình Subaru nhớ cô. Một phần đặc biệt trong Arc 3 của cuốn tiểu thuyết, cho biết chuyện gì sẽ xảy ra nếu Subaru và Rem quyết định chạy trốn khỏi mọi thứ; họ sống hạnh phúc mãi về sau và có 2 đứa con, tất nhiên, đó chỉ là những tưởng tượng từ Rem'
             ),
              makepage(
              page: 2,
              image : 'assets/images/image4.png',
              title : 'RAM',
              descrice :'Chị gái song sinh của Rem, có mái tóc hồng và cũng mang dòng máu oni(quỷ). Cùng với em mình, cô thường mỉa mai, chế giễu Subaru. Ram luôn gọi Subaru là "Barusu". Mặc dù cả hai không được phép sống khi được sinh ra vì trong bộ tộc quỷ, song sinh là điều tối kị, nhưng họ vẫn được giữ lại vì lúc nhỏ Ram là một thiên tài. Cô mất đi sức mạnh vì khi ngôi làng bị tấn công, sừng của cô bị cắt. Ram có tính cách lạnh lùng hơn nhiều so với Rem, quyết đoán hơn, mạnh mẽ hơn, nhưng luôn luôn yêu thương em gái mình. Ram làm công việc dọn dẹp và giặt quần áo trong biệt thự. Ram có tình cảm và mối quan hệ đặc biệt với ông chủ của mình, Roswaal.'
             ),
              makepage(
              page:3 ,
              image : 'assets/images/image2.jpg',
              title : 'EMILIA',
              descrice :'Là một cô gái với nửa dòng máu yêu tinh - bán yêu. Cô là một trong những người được ứng cử để trở thành quốc vương tiếp theo. Emilia có ngoại hình thu hút, mái tóc dài bạch kim, làn da trắng nõn, dáng người cân đối, thon thả, đôi mắt tím long lanh. Subaru lần đầu tiên gặp cô khi huy chương của cô bị cướp bởi Felt, thứ mà cô cần để có thể đủ tư cách tham gia vào cuộc bầu cử quốc vương. Cũng trong lần đó, Subaru gặp phải những tên cướp phiền phức và cô đã giúp anh. Emilia gây ấn tượng mạnh mẽ vì sự tốt bụng và nhân hậu mà cô có, luôn đặt lợi ích của tất cả mọi người lên trên bản thân, bất kể người đó là ai. Cô đến từ khu rừng băng, và đã hơn một trăm tuổi một chút (dù hầu hết thời gian cô bị đóng băng trong khu rừng). Tính theo tâm lý thì cô vẫn là thiếu niên. Cô luôn xem Subaru như một đứa trẻ tinh nghịch cần được chăm sóc.'
              )
             
        ],
      ),
    );
  }
}
Widget makepage({page,title,image,descrice}){
  return Container(
    decoration: 
    BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.fill, 
      )
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[Colors.pink.withOpacity(0.2),
          Colors.yellow.withOpacity(0.5),] 
        )
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(          
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.end,      
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(page.toString(),style: const TextStyle(fontSize: 30,color: Colors.black,fontWeight:FontWeight.w500),),
                const Text('/3',style: TextStyle(fontSize: 20,color: Colors.black),)
              ],
            ),
            // SizedBox(height: 250,),
            Expanded(
              child: Column(  
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,           
                children: [   
                    FadeAnimation(0.4,       
                    Text(title,style: const TextStyle(fontSize: 25,color: Colors.black),),
                    ),
                    const SizedBox(height: 5,),
                    Text(descrice,style: TextStyle(fontSize: 15,color: Colors.blue.shade500,),),
                    const SizedBox(height: 5,),
                    const Text('READ MORE',style: TextStyle(fontSize: 20,color: Colors.white),),
                    const SizedBox(height: 20,),
                 ],
              ),
            ),
           
          

          ],
        ),
      ),
      
    ),
  );
}