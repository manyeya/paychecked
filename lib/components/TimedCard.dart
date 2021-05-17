import 'package:flutter/material.dart';

class TimerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator TimercardlightsmallWidget - FRAME
    return Container(
        width: 250,clipBehavior: Clip.none,
        height: 142,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack( children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 343,
                  height: 142,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ))),
          Positioned(top: 86, left: 301, child: null),
          Positioned(
              top: 88,
              left: 16,
              child: Text(
                'Rasion Project',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(7, 4, 23, 1),
                    fontFamily: 'Rubik',
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1.25),
              )),
          Positioned(
              top: 34,
              left: 198,
              child: Text(
                '00:32:10',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Color.fromRGBO(7, 4, 23, 1),
                    fontFamily: 'Rubik',
                    fontSize: 32,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 0.625),
              )),
          Positioned(
              top: 24,
              left: 16,
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ))),
                    Positioned(
                        top: 8,
                        left: 8,
                        child: Container(
                          color: Colors.red,
                          width: 100,
                          height: 100,
                        )),
                  ]))),
        ]));
  }
}
