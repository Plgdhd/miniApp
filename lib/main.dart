import 'package:flutter/material.dart';

void main() => runApp(statefulWidgets());

class statefulWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(93, 200, 243, 1),
          title: const Text(
            "OutfitMe",
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          centerTitle: true,
          leading: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Image(
              image: AssetImage('assets/icons/fit.jpg'),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image(image: AssetImage('assets/images/gon.webp')),
              SizedBox(
                height: 50,
              ),
              LinearProgressIndicator(value: 23),
              Text(
                "23%",
                style: TextStyle(
                    color: Color.fromARGB(255, 237, 111, 32), fontSize: 20),
              ),
              Text(
                "Load your photo",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ],
          ),
        ),
        floatingActionButton: Align(
          alignment: Alignment(0.25, 0.7),
          child: SizedBox(
            width: 300,
            height: 200,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color.fromRGBO(224, 27, 109, 1),
              child: Icon(Icons.cloud_download),
            ),
          ),
        ),
      ),
    );
  }
}
