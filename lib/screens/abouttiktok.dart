import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:guide/screens/abouttk/HiH.dart';
import 'package:guide/screens/abouttk/guide.dart';
import 'package:guide/screens/abouttk/htu.dart';
import 'package:guide/screens/abouttk/whttk.dart';
import 'package:guide/screens/abouttk/wim.dart';
class Tiktok extends StatefulWidget {
  @override
  _TiktokState createState() => _TiktokState();
}

class _TiktokState extends State<Tiktok> {
    InterstitialAd myInterstitial;

  InterstitialAd buildInterstitialAd() {
    return InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      listener: (MobileAdEvent event) {
        if (event == MobileAdEvent.failedToLoad) {
          myInterstitial..load();
        } else if (event == MobileAdEvent.closed) {
          myInterstitial = buildInterstitialAd()..load();
        }
        print(event);
      },
    );
  }

  void showInterstitialAd() {
    myInterstitial..show();
  }

  @override
  void initState() {
    super.initState();
    myInterstitial = buildInterstitialAd()..load();
  }

 @override
  void dispose() {
    myInterstitial.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold
      (
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(                 
                    child:Container
                  (
                    child: Center(child: Text('WHAT IS TIKTOK?',style: TextStyle(color: Colors.white),)),
                    color: Colors.black,
                    height: 50,
                    width: 320,

                  ), 
                    
                  onPressed: ()
                  {
                    showInterstitialAd();
                    Navigator.push(context, MaterialPageRoute
                    (builder: (context)=>Whatistk())
                    );
                  },),
                  SizedBox(height: 20,),
                  FlatButton(
                    
                    child:Container
                  (
                    child: Center(child: Text('HOW TO USE',style: TextStyle(color: Colors.white),)),
                    color: Colors.black,
                    height: 50,
                    width: 320,

                  ), 
                    
                  onPressed: ()
                  {
                    showInterstitialAd();
                    Navigator.push(context, MaterialPageRoute
                    (builder: (context)=>HowToUse())
                    );
                  },),
                  SizedBox(height: 20,),
                  FlatButton(
                    
                    child:Container
                  (
                    child: Center(child: Text('HOW IT HELP US',style: TextStyle(color: Colors.white),)),
                    color: Colors.black,
                    height: 50,
                    width: 320,

                  ), 
                    
                  onPressed: ()
                  {
                    showInterstitialAd();
                    Navigator.push(context, MaterialPageRoute
                    (builder: (context)=>HowItHelps())
                    );
                  },),
                  SizedBox(height: 20,),
                  FlatButton(
                    
                    child:Container
                  (
                    child: Center(child: Text('GUIDE',style: TextStyle(color: Colors.white),)),
                    color: Colors.black,
                    height: 50,
                    width: 320,

                  ), 
                    
                  onPressed: ()
                  {
                    showInterstitialAd();
                    Navigator.push(context, MaterialPageRoute
                    (builder: (context)=>Guidetk())
                    );

                  },),
                  SizedBox(height: 20,),
                  FlatButton(
                    
                    child:Container
                  (
                    child: Center(child: Text('WHAT IS MUSICALLY',style: TextStyle(color: Colors.white),)),
                    color: Colors.black,
                    height: 50,
                    width: 320,

                  ), 
                    
                  onPressed: ()
                  {
                    showInterstitialAd();
                     Navigator.push(context, MaterialPageRoute
                    (builder: (context)=>WhatIsMusically())
                    );
                  },),
                ],
            ),
          ),
        ),

      )
      );
  }
}