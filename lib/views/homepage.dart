import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool footBallCheck = false;
  bool valeyBallCheck = false;
  int groupValueRadio = 0;
  List<bool> isSelectsToogle = [false, true, false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Checkbox,radio button and Toggle buttons'),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///footBall checkbox
              CheckboxListTile(
                value: footBallCheck,
                onChanged: (bool? value) {
                  setState(
                    () {
                      footBallCheck = value!;
                    },
                  );
                  print(footBallCheck);
                },
                title: Text('Football'),

                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.green,
                checkColor: Colors.red,
                subtitle: Text('Footbal is beatefull'),
                checkboxShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                // secondary: Icon(Icons.add),

                /// fillColor: MaterialStateProperty.all(Colors.lightBlue),
              ),

              ///valeyBall sheckBox
              CheckboxListTile(
                value: valeyBallCheck,
                onChanged: (bool? value) {
                  setState(
                    () {
                      valeyBallCheck = value!;
                    },
                  );
                  print(valeyBallCheck);
                },
                title: Text('valeyBall'),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.green,
                checkColor: Colors.red,
                subtitle: Text('ValeyBall is beatefull'),
                checkboxShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),

                /// fillColor: MaterialStateProperty.all(Colors.lightBlue),
              ),
              SizedBox(
                height: 10,
              ),

              ///radiobutton male
              RadioListTile(
                value: 1,

                ///controlAffinity: ListTileControlAffinity.trailing,
                title: Text('kisi'),
                activeColor: Colors.green,

                groupValue: groupValueRadio,
                onChanged: (int? value) {
                  setState(
                    () {
                      groupValueRadio = value!;
                    },
                  );
                },
              ),

              ///radio button female
              RadioListTile(
                value: 2,
                title: Text('qadin'),
                activeColor: Colors.green,

                /// controlAffinity: ListTileControlAffinity.trailing,
                groupValue: groupValueRadio,
                onChanged: (int? value) {
                  setState(
                    () {
                      groupValueRadio = value!;
                    },
                  );
                },
              ),

              ///tooglebuttons
              ToggleButtons(
                children: [
                  Icon(Icons.message),
                  Icon(Icons.call),
                  Icon(Icons.accessibility),
                ],
                isSelected: isSelectsToogle,
                onPressed: (int index) {
                  setState(
                    () {
                      isSelectsToogle[index] = !isSelectsToogle[index];
                    },
                  );
                },
                color: Colors.green,
                // disabledColor: Colors.orange,
                fillColor: Colors.red,

                ///selectedColor: Colors.blue,
                direction: Axis.vertical,
                borderRadius: BorderRadius.circular(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
