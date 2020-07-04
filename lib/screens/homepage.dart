import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:guide/screens/abouttiktok.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BannerAd myBanner;

  BannerAd buildBannerAd() {
    return BannerAd(
        adUnitId: BannerAd.testAdUnitId,
        size: AdSize.banner,
        listener: (MobileAdEvent event) {
          if (event == MobileAdEvent.loaded) {
            myBanner..show();
          }
        });
  }


  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);
    myBanner = buildBannerAd()..load();
  }


  @override
  void dispose() {
    myBanner.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar
        (
          title: Text('All in one guide'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        drawer:Drawer (
          child:ListView
          (
            children: <Widget>
            [
              DrawerHeader(child: Text(''),
              decoration: BoxDecoration
              (
                color: Colors.black
              ),
              ),
              ListTile
              (
                leading: Icon(Icons.home),
               title: Text('Home'),
              ),
              ListTile
              (leading: Icon(Icons.query_builder),
                title: Text('About'),
              ),
              ListTile
              (leading:Icon(Icons.text_format),
                title: Text('Privacy policy'),
              ),


            ],
          )

        ),
            body: Center(
                        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(                 
                  child:Container
                (
                  child: Center(child: Text('Tiktok',style: TextStyle(color: Colors.white),)),
                  color: Colors.black,
                  height: 50,
                  width: 320,

                ), 
                  
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Tiktok()));
                },),
                // SizedBox(height: 20,),
                // FlatButton(
                  
                //   color: Colors.red,
                //   child:Container
                // (
                //   child: Center(child: Text('Helo',style: TextStyle(color: Colors.white),)),
                //   color: Colors.red,
                //   height: 50,
                //   width: 320,

                // ), 
                  
                // onPressed: (){},),
                // SizedBox(height: 20,),
                // FlatButton(
                  
                //   color: Colors.red,
                //   child:Container
                // (
                //   child: Center(child: Text('Hago',style: TextStyle(color: Colors.white),)),
                //   color: Colors.red,
                //   height: 50,
                //   width: 320,

                // ), 
                  
                // onPressed: (){},),
                // SizedBox(height: 20,),
                // FlatButton(
                  
                //   color: Colors.red,
                //   child:Container
                // (
                //   child: Center(child: Text('Like',style: TextStyle(color: Colors.white),)),
                //   color: Colors.red,
                //   height: 50,
                //   width: 320,

                // ), 
                  
                // onPressed: (){},),
                // SizedBox(height: 20,),
                // FlatButton(
                  
                //   color: Colors.red,
                //   child:Container
                // (
                //   child: Center(child: Text('ShareChat',style: TextStyle(color: Colors.white),)),
                //   color: Colors.red,
                //   height: 50,
                //   width: 320,

                // ), 
                  
                // onPressed: (){},),
              ],
          ),
        ),
            ),
      ),
    );
  }
}