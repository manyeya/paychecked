import 'package:flutter/material.dart';

class LittleRec extends StatelessWidget {
  final Color color;
  final String text;
  LittleRec({
    Key key,
    @required this.color,@required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        alignment: AlignmentDirectional.center,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: color),
          softWrap: true,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6), color: color.withAlpha(50)),
      ),
    );
  }
}
