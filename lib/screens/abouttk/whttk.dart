import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
class Whatistk extends StatefulWidget {
  @override
  _WhatistkState createState() => _WhatistkState();
}

class _WhatistkState extends State<Whatistk> {
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(title: Text('What is tiktok'),centerTitle: true,backgroundColor: Colors.black,),
        body: Container
        (
          child: ListView
          (
            children: <Widget>
            [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('What is TikTok and why does it own Musical.ly?',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('''TikTok is becoming one of the most famous social media platforms that attract youngsters because of its hot trends. TikTok is a video sharing social network service from China that allows users to share short-form mobile videos. It allows users to create their own videos with tons of tools such as filters, stickers, control over video speed, access to professional audio to make interesting and entertaining content.
Videos in this platform are in several categories: short dance, lip sync, makeup tutorial or even teaching videos. TikTok-ers are encouraged to share their passion and creative expression through their short videos.
It’s the best choice for you to entertain after a long day and make money on it as well.

In the simplest terms, the concept behind TikTok App is for lay people is able to swiftly and effortlessly create short videos using their smartphones, thereby empowering each one to be a media creator / a designer.
TikTok was launched in Sep’17 by ByteDance based in China, the world’s top unicorn valued at \$75 billion. ByteDance bought Musicly in Aug’18, a video-sharing app for \$1billion (with 200 million audience base), merged it with TikTok and re-launched it to create a larger video community.
TikTok employs Artificial Intelligence to analyse user interests and liking’s through interactions with feeder content, and then displays personalized content to each user. As of 2018, TikTok App is available in 154 countries, and in 75 different languages.

Chinese video platform TikTok has taken over Musical.ly, merging the two app powerhouses. In China, the app is known as Douyin and has over 300 million monthly active users, much bigger than Musical.lyâ€™️s reach. 

Whilst TikTok is based around users uploading short videos of themselves, like good old Vine used to do, it doesnâ€™️t have the emphasis on music and songs like Musical.ly did. 

Alex Zhu, co-founder of Musical.ly and now senior vice president of TikTok, said he was excited to enter a new chapter with the Chinese company. 

We want to capture the world's creativity and knowledge under this new name and remind everyone to treasure every precious life moment. Combining musical.ly and TikTok is a natural fit given the shared mission of both experiences as to create a community where everyone can be a creator '''),
              ),
              Text('')
            ],
          ),
        ),
      ),
    );
      
  }
}