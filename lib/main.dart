import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '로그인 회원가입 테스트',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 80.0,
            ),
            Image.asset(
              'assets/apayo_logo.png', // 이미지 파일 경로
              height: 150.0,
            ),
            SizedBox(
              height: 48.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '아이디',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                obscureText: true, // 비밀번호 입력 시 마스킹 처리
                decoration: InputDecoration(
                  hintText: '비밀번호',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32.0),
              width: double.infinity,
              height: 48.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  '로그인',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32.0),
              width: double.infinity,
              height: 48.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/KakaoTalk_logo.jpg', // 카카오 로고 이미지 파일 경로
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      '카카오 로그인',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                '회원가입',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
