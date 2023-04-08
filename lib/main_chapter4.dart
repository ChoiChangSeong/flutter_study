import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title:
            Text(
              'Text Widget in Appbar Widtget',
              style: TextStyle(fontSize: 20),
            ),
            centerTitle: true, //Appbar 가운데 정렬
            leading:ElevatedButton(onPressed: (){},
                    child:
                        Text('TT'),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white24)
                        ),
                    ),
          ),
        body:SingleChildScrollView(// Scrollable 화면
          child: Padding(
            padding: const EdgeInsets.all(16.0), //4방 모두 동일하게 패딩
            // 특정 방향만 패딩
            // padding: const EdgeInsets.only(
            //   left: 8,
            //   right: 8,
            // ),
            // 위아래 좌우를 쌍으로 컨트롤
            //padding: const EdgeInsets.symmetric(
            //  vertical: 8,
            //  horizontal: 8,
            //  ),
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.network("https://i.ibb.co/CwzHq4z/trans-logo-512.png", width: 81,),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Label text(Hint Text)'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Label text(password)'),
                    obscureText: true,
                  ), //password 필드에 * 처리
                  Container(
                    width: double.infinity, //양옆으로 최대
                    margin: const EdgeInsets.only(
                      top: 16
                    ),
                    child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Button text child'),
                    ),
                  ),
                ],
              ),
          ),
        ),
      ), // 한 페이지의 특정 영역에 위젯을 쉽게 배치할 수 있도록 틀을 잡아주는 역할을 함
    );
  }

}
