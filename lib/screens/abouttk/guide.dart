import 'package:flutter/material.dart';
class Guidetk extends StatefulWidget {
  @override
  _GuidetkState createState() => _GuidetkState();
}

class _GuidetkState extends State<Guidetk> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(title: Text('GUIDE'),centerTitle: true,backgroundColor: Colors.black,),
        body: Container
        (
          child: ListView
          (
            children: <Widget>
            [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('''
How To Tag Videos?
Rate Our app in playstore if you like

1> Open the Tik Tok app on your Android. The icon is black with a white music note on it. ... 

2>Tap the speech balloon icon on the right-hand side. ... 

3>Tap the text field at the bottom of the comments. ... 

4>Tap the @ icon next to the comment field. ... 

5>Tap the friend you want to mention. ... 

6>Tap the red paper plane icon. '''),
              ),
              Text('')
            ],
          ),
        ),
      ),
    );
  }
}