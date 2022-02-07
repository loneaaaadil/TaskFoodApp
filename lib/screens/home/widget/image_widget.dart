import 'dart:ui';

import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          color: Colors.green,
          child: Stack(
            children: [
              Container(
                child: Image.asset(
                  "assets/images/Image.png",
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 200, top: 40),
                child: Text(
                  "Special Deal For March",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 200, top: 100),
                  child: Container(
                    child: Column(
                      children: [
                        RaisedButton(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.green,
                          padding: EdgeInsets.zero,
                          splashColor: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
