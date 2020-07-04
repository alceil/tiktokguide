import 'package:flutter/material.dart';
class HowToUse extends StatefulWidget {
  @override
  _HowToUseState createState() => _HowToUseState();
}

class _HowToUseState extends State<HowToUse> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            appBar: AppBar
            (
              title: Text('How to Use'),
              centerTitle: true,
              backgroundColor: Colors.black,
            ),
            body: Container
            (
              child: ListView
              (
                children: <Widget>
                [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('''01: Basics Of Account
Establishing Your Identity
Your profle should clearly communicate your identity as a creator while also attracting frst-time visitors.

Optimizing Your Profle
1.	Profle Name


#Pick a name that is short, memorable, and where possible, gives visitors an idea of the videos you make or who you are.

#When you set up your profle, keep your username consistent with your other social platforms.

Consistency across platforms is important so your followers can easily fnd you.
Consistency helps create your brand.

2. Update Description
Have a clear description that tells visits who you are and what kind of videos you make.
EXAMPLES
#Hi guys, I do extreme sports! Check out my videos and leave a comment.â€ 

#Live, love...but mostly LAUGH at my skits! Comment which of my videos you think is the funniest!â€
3.	Upload profle picture or video
To better showcase your personality and content, use an existing video from your camera roll instead of a picture.
4. Link Instagram and/or YouTube accounts
# You will be required to sign in to your Instagram & YouTube accounts to do this. This ensures that your followers know that the musical.ly account is actually yours.

# Linking to Instagram allows you to share your musical.ly videos on Instagram more easily, which will in turn fuel your growth across both platforms.

# As you grow on musical.ly, your fan base will want to check out more of your other content. We want you to grow as quickly as possible everywhere, so be sure to link your other social accounts.
TIP
If you already have amazing videos in your library, posting some of these on musical.ly can help jumpstart your account (don't forget, musical. ly is a platform where vertical videos shine brightest).'''),
                  )
                ],
              ),
            )
      ),
    );
  }
}