import 'package:flutter/material.dart';
import 'package:flutter_30_days_challenge/pages/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Weekends Flutter'),),
      body: Center(
        child: Text('Flutter 30 days challenge'),
      ),
      drawer: MyDrawer(),
    );
  }
}
