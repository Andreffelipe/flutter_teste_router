import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

import 'button.dart';

@docWidget
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Button(
          title: 'Go to second page',
          routeName: '/second',
          arguments: 'Argumento passado por paramentro da rota',
        ),
      ),
    );
  }
}
