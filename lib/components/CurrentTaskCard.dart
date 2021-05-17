import 'package:flutter/material.dart';

class CurrentTaskCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Current Task',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.deepPurple[900]),
          ),
          SizedBox(height: 10),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.deepPurple[900]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '00:24:52',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                  iconSize: 20,
                                  onPressed: () {},
                                  color: Colors.white),
                            ],
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Learn HTML,CSS & Javascript',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ]))
        ],
      ),
    );
  }
}
