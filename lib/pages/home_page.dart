import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  final List _imageUrls = [
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fitbbs%2F1501%2F01%2Fc13%2F1385127_1420126095037_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1637220947&t=7bb3b842f3466cd74e2b3e4838875cdb',
    'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2t4.www.rmzxb.com.cn%2Fupload%2Fresources%2Fimage%2F2017%2F03%2F13%2F1630988.jpg&refer=http%3A%2F%2F2t4.www.rmzxb.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1637220947&t=c7cb3ef58e196d3bc35d67f39c844cbb',
    'https://img1.qunarzz.com/travel/d0/1708/f5/fffa1b8b6b1b4fb5.jpg_r_720x480x95_da43030a.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 200.0,
              child: Swiper(
                itemCount: _imageUrls.length,
                autoplay: true,
                itemBuilder: (
                    BuildContext context, int index) =>
                    Image.network(_imageUrls[index],
                    fit: BoxFit.fill,
                    ),
                pagination: const SwiperPagination(),
              )
              ,)
          ],
        ),
      ),
    );
  }

}