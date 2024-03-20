// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:streamapp/live_Stream.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Container(
                width:MediaQuery.of(context).size.width*0.9,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LivePage(
                            liveID: "test",
                            isHost: true,
                          ),
                        ),
                      );
                    },
                    child: Text("start Stream")),
              ),
              Container(
                width:MediaQuery.of(context).size.width*0.9,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LivePage(
                                    liveID: "test",
                                    isHost: false,
                                  )));
                    },
                    child: Text("Open Stream")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
