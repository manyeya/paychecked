import 'package:flutter/material.dart';
import 'package:paychecked/components/LittleRec.dart';
import 'package:paychecked/components/TimerText.dart';

class TimeTile extends StatelessWidget {
  const TimeTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.green,
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "Learn HTML,CSS & Javascript",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        LittleRec(color: Colors.grey, text: "Personal"),
                        SizedBox(
                          width: 10,
                        ),
                        LittleRec(color: Colors.green, text: "Rasion Project"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(child: TimerText()),
                  Expanded(
                      flex: 2,
                      child: Icon(Icons.play_arrow_rounded,
                          size: 50, color: Colors.grey))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
