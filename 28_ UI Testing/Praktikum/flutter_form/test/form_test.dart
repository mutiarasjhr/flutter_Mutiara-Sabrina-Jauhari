import 'package:flutter/material.dart';
import 'package:flutter_form/home.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Judul halaman harus Contacts', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Home(),
      ),
    );

    expect(find.text('Contacts'), findsOneWidget);
  });

  testWidgets('Harus ada text Create New Contacts',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Home(),
    ));
    expect(find.text('Create New Contacts'), findsOneWidget);
  });

  testWidgets('Harus ada text form untuk input nama dan nomor',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Home(),
    ));
    Finder inputForm = find.byType(TextFormField);
    expect(inputForm, findsNWidgets(2));
  });

  testWidgets('Harus ada date picker', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Home(),
    ));
    Finder dateTime = find.byType(TextButton);
    expect(dateTime, findsOneWidget);
  });

  testWidgets('Harus ada color picker', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Home(),
    ));
    Finder colorPicker = find.byType(TextButton);
    expect(colorPicker, findsOneWidget);
  });

  testWidgets('file picker', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Home(),
      ),
    );

    expect(find.text('Pick and Open File'), findsOneWidget);
  });
}
