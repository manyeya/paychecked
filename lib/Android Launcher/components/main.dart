import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:paychecked/services/services.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  AppCaller appCaller = new AppCaller();
  @override
  Widget build(BuildContext context) {
    final apps = appCaller.callApps();
    return MaterialApp(
      title: 'Flutter Demovhv',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: FutureBuilder(
          future: apps,
          builder: (context, snapshot) {
            return snapshot.hasData
                ? ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, i) {
                      Application app = snapshot.data[i];
                      app as ApplicationWithIcon;
                      return Container(
                        color: Colors.red,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            app is ApplicationWithIcon
                                ? CircleAvatar(
                                    backgroundImage: MemoryImage(
                                      app.icon,
                                    ),
                                    backgroundColor: Colors.white,
                                  )
                                : Text(
                                    app.appName,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              app.appName,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      );
                    },
                  )
                : Text(snapshot.error.toString() ??
                    'Some unknown error has occured');
          },
        ),
      ),
    );
  }
}
