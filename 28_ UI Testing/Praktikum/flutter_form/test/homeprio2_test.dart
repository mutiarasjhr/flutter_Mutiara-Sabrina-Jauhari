import 'package:flutter/material.dart';
import 'package:flutter_form/prio2/homepage2.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Judul halaman harus Clothing.id', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: HomePrio2(),
      ),
    );

    expect(find.text('Clothing.id'), findsOneWidget);
  });

  testWidgets('Body halaman atas harus Hello, Welcome to Clothing.id App',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: HomePrio2(),
      ),
    );

    expect(
        find.text(
            'Hello, Welcome to Clothing.id App. Disini anda mencari model pakaian yang diinginkan <3'),
        findsOneWidget);
  });

  testWidgets('harus ada Contcat Us', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: HomePrio2(),
      ),
    );

    expect(find.text('Contact Us'), findsOneWidget);
  });

  testWidgets('Form Input', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomePrio2(),
    ));
    Finder inputForm = find.byType(TextFormField);
    expect(inputForm, findsNWidgets(4));
  });

  testWidgets('Container', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomePrio2(),
    ));
    Finder container = find.byType(Container);
    expect(container, findsOneWidget);
  });
}
