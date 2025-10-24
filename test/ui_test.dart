import 'package:flutter_test/flutter_test.dart';
import 'package:untitled1/Presentation/app.dart';
import 'package:flutter/foundation.dart';

void main(){
  testWidgets("", (tester) async {
    await tester.pumpWidget(MyApp());
    
    expect(find.text('Войти'), findsOneWidget);

    expect(find.text('Hello World'), findsNothing);

    await tester.tap(find.byKey(Key("123")));

    await tester.pump();
  });
}