import 'package:flutter/material.dart';
import 'package:doc_widget/doc_widget.dart';

/// ```dart
/// ButtonNaviagator(
///  title: 'title button',
///  routeName: '/route-name,
///  arguments: {algo a ser passado pela rota}
/// );
/// ```

@docWidget
class Button extends StatelessWidget {
  final String title;
  final String routeName;
  final dynamic arguments;

  Button({
    Key key,
    @required this.title,
    this.routeName,
    this.arguments = '',
  }) : super(key: key);

  static const Key buttonKey = Key('buttonKey');

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      key: buttonKey,
      child: Text(title),
      onPressed: () => Navigator.of(context)
          .popAndPushNamed(routeName, arguments: arguments),
    );
  }
}
