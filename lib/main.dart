import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import './provide/counter.dart';
import './pages/index_page.dart';

void main() {
  var counter = Counter();
  var providers = Providers();
  providers..provide(Provider<Counter>.value(counter));

  /* 用ProviderNode将MyApp包裹, 并注入providers */
  runApp(ProviderNode(
    providers: providers,
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'provide demo',
        debugShowCheckedModeBanner: false,
        
        /* IndexPage */
        home: IndexPage(),
      ),
    );
  }
}