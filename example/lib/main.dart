import 'package:flutter/material.dart';
import 'package:proste_indexed_stack/proste_indexed_stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppHome(),
    );
  }
}

class MyAppHome extends StatefulWidget {
  @override
  _MyAppHomeState createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyAppHome>
    with SingleTickerProviderStateMixin {
  int _current = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ProsteIndexedStack(
        index: _current,
        children: [
          IndexedStackChild(child: HomePage()),
          IndexedStackChild(child: MyPage()),
          IndexedStackChild(child: Demo(), preload: true),
          IndexedStackChild(child: Demo2()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _current,
        onTap: (value) {
          setState(() {
            _current = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '我的'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '参考'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '测试'),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    print('home init');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('home'),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('profile');
    return Center(
      child: Text('Proifle'),
    );
  }
}

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  void initState() {
    super.initState();
    print('demo load');
  }

  @override
  void dispose() {
    print('demo dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Demo'),
    );
  }
}

class Demo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('demo2 build');
    return Center(
      child: Text('Demo2'),
    );
  }
}
