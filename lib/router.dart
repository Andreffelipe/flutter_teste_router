import 'package:flutter/material.dart';

import 'first_page.dart';
import 'second_page.dart';

class GenerateRouter {
  static Route<dynamic> router(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FirstPage());
      case '/second':
        return MaterialPageRoute(
            builder: (_) => SecondPage(
                  data: arguments,
                ));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
