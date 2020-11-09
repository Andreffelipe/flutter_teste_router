import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_teste_router/button.dart';
import 'package:flutter_teste_router/main.dart';

void main() {
  testWidgets('Test widget button', (WidgetTester tester) async {
    //await _createWidget(tester);
    await tester.pumpWidget(MyApp());

    expect(find.byKey(Button.buttonKey), findsOneWidget);

    expect(find.text('First Page'), findsOneWidget);

    await tester.tap(find.byType(Button));

    await tester.pump();

    expect(find.text('Second Page'), findsOneWidget);
  });
}

Future<void> _createWidget(WidgetTester tester) async {
  await tester.pumpWidget(
    MaterialApp(
      title: 'realizando teste',
      theme: ThemeData.dark(),
      home: Button(
        title: 'Navigator',
        routeName: '/second',
      ),
    ),
  );

  await tester.pump();
}
