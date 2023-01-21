import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Table Tennis managing',
        home: Scaffold(
          appBar: AppBar(
            title: Text('윤스핑퐁', style: TextStyle(fontSize: 30)),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: MyMediaQuery('회원관리', Icons.account_circle)
                ),
              Center(
                child: MyMediaQuery('레슨 시간표', Icons.book)
                )
            ],
          ),
        ));
  }
}

class MyMediaQuery extends StatelessWidget {
  final String myParam;
  final IconData myIcon;
  MyMediaQuery(this.myParam, this.myIcon);

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final screenSize = data.size;
    return Container(
      color: Colors.grey,
      width: screenSize.width * 0.8,
      height: screenSize.height * 0.1,
      padding: EdgeInsets.all(screenSize.height*0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(myIcon),
        Text(myParam, style: TextStyle(fontSize: screenSize.height*0.07))
      ]),
    );
  }
}
