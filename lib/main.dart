import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

import 'router.dart';

void main() {
  runApp(MyApp());
}

@docWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: GenerateRouter.router,
    );
  }
}
