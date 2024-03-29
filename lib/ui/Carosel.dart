import 'package:api_fetch_practice/model/post_method_complex.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CaroselWithDots extends StatefulWidget {

  Product imgList;
  CaroselWithDots({required this.imgList});

  @override
  State<CaroselWithDots> createState() => _CaroselWithDotsState();
}


class _CaroselWithDotsState extends State<CaroselWithDots> {
  int _current = 1;
  @override
  Widget build(BuildContext context) {
    // List<String> images = widget.imgList.images;

    final List<Widget> imageSliders = widget.imgList.images!
        .map((item) => Container(
      child: SafeArea(
        child: ClipRRect(
            child: Stack(
              children: <Widget>[
                Image.network(item, fit: BoxFit.fill,),
                Positioned(
                  bottom: -10.0,
                  left: 100.0,
                  right: -100.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: Text(
                      'No. ${widget.imgList.images!.indexOf(item) + 1} image',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    ))
        .toList();
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                  autoPlay: true,
                  //  enlargeCenterPage: true,
                  viewportFraction: 1.5,
                  aspectRatio: 1,
                  // enlargeStrategy: CenterPageEnlargeStrategy.height,
                  onPageChanged: (index, reason){
                    setState(() {
                      _current = index;
                    });
                  }
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imgList.images!.map((url) {
              int index = widget.imgList.images!.indexOf(url);
              return Container(
                width: 10,
                height: 8,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 3,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.5),

                ),
              );
            }).toList(),
          ),

         Row(
           mainAxisAlignment: MainAxisAlignment.center,

           children: [
             Text("Title : ${widget.imgList.id}"),
             Text("Desc :  ${widget.imgList.title}"),
           ],
         )
        ],
      ),
    );
  }
}
