import 'package:flutter/material.dart';
import 'BLE.dart';
void main(List<String> args) {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NewButton',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('bluetooth'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  print('드론 블루투스');
                },
                onLongPress: () { // 버튼을 오래 눌렀을때 실행되는 동작
                  print('text long button');
                },
                child: Text('드론 블루투스',
                  style: TextStyle(
                    fontSize: 20.0,
                    //color: Colors.red,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                  //backgroundColor: Colors.purple,

                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                  );
                  print('블루투스 연결하기');
                },
                child: Text('블루투스 연결하기'),

                //ElevatedButton 은 backgroundColor 속성이 없다.
                //ElevatedButton 에서는 primary 속성이 배경색을 담당한다.
                style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                      // shape : 버튼의 모양을 디자인 하는 기능

                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    elevation: 0.0
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  print('드론 위치 추적하기');
                },
                child: Text('드론 위치 추적하기'),
                style: OutlinedButton.styleFrom(
                    primary: Colors.green,
                    side: BorderSide(
                        color: Colors.black87,
                        width: 2.0
                    )
                ),
              ),
              // 버튼 옆에 아이콘을 넣고 싶다면 TextButton.icon을 불러오자.

              ElevatedButton.icon(
                onPressed: null, // onPressed에 null 을 넣으면 버튼이 비활성화 됨
                // onPressed: (){
                //   print('Go to home');
                // },
                icon: Icon(
                  Icons.access_alarm,
                  size: 40,
                  color: Colors.lightGreen,
                ),
                label: Text('access alarm'),
                style: TextButton.styleFrom(
                    primary: Colors.purple,
                    minimumSize: Size(200, 50), // 버튼의 크기 조절하는 속성
                    onSurface: Colors.lightGreen // 비활성화된 버튼 색도 바꿀 수 있다.
                ),
              ),

              // ButtonBar : 버튼들을 가로방향으로 끝정렬 시켜주고,
              //만약 가로방향 공간이 부족하면 자동으로 버튼을 세로로 배치해준다.
              ButtonBar(
                alignment: MainAxisAlignment.center, //ButtonBar 버튼들이 중앙으로 이동
                buttonPadding: EdgeInsets.all(20), // 버튼들의 패딩값을 주기
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text('Text Button')
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text('Elevated Button'))
                ],
              )
            ],
          ),
        )
    );
  }
}