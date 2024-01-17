import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    print('height:$height');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Main Page'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.blue,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.red,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
