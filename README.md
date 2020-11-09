# flutter_teste_router

Antes de passar para os próximos passos é preciso aprender sobre o WidgetTester, pumpWidget, pump, pumpAndSettle e o Finder.
<h5>WidgetTester:</h5> Responsável por toda a “simulação” do seu widget, construção, gestos, etc.
<h5>pumpWidget():</h5> Cria o widget e fala para o WidgetTester construí-lo.
<h5>pump():</h5> Reconstrói o widget depois de um determinado período de tempo.
<h5>pumpAndSettle():</h5> Reconstrói o widget até o último frame/estado, essencial quando se está testando widgets que contêm algum tipo de animação.
<h5>Finder:</h5> Como o nome entrega, ele é responsável por achar os widgets.

# criando um teste

Todos os arquivos vão na pasta “/test” e os nomes tem que haver “_test” no final para ser reconhecido como arquivo de teste.

`
-test
   |-meu_teste_test.dart
`



```dart
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
```