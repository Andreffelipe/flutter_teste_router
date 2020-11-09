import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

import 'button.dart';

@docWidget
class SecondPage extends StatelessWidget {
  final String data;
  SecondPage({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Center(child: Text(data)),
            Center(
              child: Button(
                title: 'Go to first page',
                routeName: '/',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
