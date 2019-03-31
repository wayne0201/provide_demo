import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/counter.dart';

class MinusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面二'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Number(),
            MyButton(),
          ],
        ),
      ),
    );
  }
}

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 200),
      /* 动态监听 Counter 内的 value, 需要用 Provide Widget 包裹起来，然后利用 builder 函数返回子节点 */
      child: Provide< Counter>(
        builder: (context, child, counter) {
          return Text(
            'count：${counter.value}',
            style: Theme.of(context).textTheme.display1,
          );
        },
      ),
    );
  }
}

class MyButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80),
      child: RaisedButton(
        onPressed: () {
          /* 触发 Counter 类的 minus 方法 */
          Provide.value<Counter>(context).minus();
        },
        child: Text("减一"),
        color: Colors.yellow,
      ),
    );
  }
}
