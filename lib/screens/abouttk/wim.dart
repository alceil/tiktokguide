import 'package:flutter/material.dart';
class WhatIsMusically extends StatefulWidget {
  @override
  _WhatIsMusicallyState createState() => _WhatIsMusicallyState();
}

class _WhatIsMusicallyState extends State<WhatIsMusically> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
          child: Scaffold(
        appBar: AppBar(title: Text('What is Musically'),centerTitle: true,backgroundColor: Colors.black,),
        body: Container
        (
          child: ListView
          (
            children: <Widget>
            [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('What is Musical.ly?',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('''
Rate Our app in playstore if you like

The musical.ly app is more than just a lip sync video creation tool like Dubsmash, itâ€™️s a full on social network with challenges, hilarious and talented creators to entertain you and a powerful tool to make your own music infused videos to share on musical.ly or to save and share privately. 

Musical.ly is a free app and we did not find any in-app purchases yet, which is surprising for how much the app offers. Some of the editing features are only available after you share a musical.ly video to a service like Instagram, but most users will probably do this anyway. '''),
              ),
              Text('')
            ],
          ),
        ),
      ),
    );
  }
}