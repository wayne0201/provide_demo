import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


import './add_page.dart';
import './minus_page.dart';

class IndexPage extends StatefulWidget {
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.add_circled),
      title: Text('增'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.minus_circled),
      title: Text('减'),
    ),
  ];


  final List<Widget> tabBodies = [
    AddPage(),
    MinusPage(),
  ];

  int currentIndex = 0;
  var currentPage;

  void initState() {
    currentPage = tabBodies[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        
        /* Tab */
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          items: bottomTabs,
          onTap: (index) {
            setState(() {
              /* 修改当前的页面索引，切换当前页 */
              currentIndex = index;
              currentPage = tabBodies[currentIndex];
            });
          },
        ),

        /* Page */
        body: IndexedStack(
          index: currentIndex,
          children: tabBodies,
        ),
      ),
    );
  }
}
