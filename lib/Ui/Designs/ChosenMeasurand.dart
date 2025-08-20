import 'package:flutter/material.dart';

class ChoosenMeasurand extends StatelessWidget {
  double? width;
  String title;
  String data;
  String img;
  ChoosenMeasurand({this.width, required this.title, required this.data,required this.img});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: width ?? double.infinity,
      height: 180,
      decoration: BoxDecoration(
        // image: DecorationImage(
        //   image: NetworkImage(
        //     "https://t3.ftcdn.net/jpg/02/22/62/16/360_F_222621601_mssbAmhR6Wh3dOGXNFbQyFdS1D7YaFBC.jpg"
        //   ),9
        //   fit: BoxFit.cover,
        // ),
        color: Colors.white.withAlpha(50),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            width: double.infinity,
            height: 30,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(title,style: TextStyle(color: Colors.white),),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.fill,
                ),
              ),
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  data,
                  style: TextStyle(
                    fontSize: 140,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withAlpha(150),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
