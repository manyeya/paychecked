import 'package:flutter/material.dart';

class TextBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            left: 16,
            top: 76,
            child: Text(
              "12",
              style: TextStyle(
                color: Color(
                  0xff070417,
                ),
                fontSize: 32,
                fontWeight: FontWeight.w500,
                fontFamily: "Rubik",
              ),
            ),
          ),
          Positioned(
            left: 60,
            top: 16,
            child: SizedBox(
              child: Text(
                "Task Completed",
                style: TextStyle(
                  color: Color(
                    0xff070417,
                  ),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Rubik",
                ),
              ),
              width: 88,
            ),
          ),

          /// Detected as Icon
          /// FIXME: Check your design. this is an icon of node "Icon Check". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
          Image.network(
            "bridged://url-reservation/image-hosting/19:1142",
            width: 32,
            height: 32,
            fit: BoxFit.cover,
          ),

          /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
          Container(),
        ],
      ),
      width: 164,
      height: 132,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
    );
  }
}
