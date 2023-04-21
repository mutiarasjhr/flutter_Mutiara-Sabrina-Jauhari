import 'package:flutter/material.dart';
import 'package:flutter_form/eksplorasi/homeekplorasi.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Judul halaman ', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: HomeEksplorasi(),
      ),
    );

    expect(find.text('List Mahasiswa'), findsOneWidget);
  });

  testWidgets('Container form', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomeEksplorasi(),
    ));
    Finder container = find.byType(Container);
    expect(container, findsOneWidget);
  });

  testWidgets('Form Input', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomeEksplorasi(),
    ));
    Finder inputForm = find.byType(TextFormField);
    expect(inputForm, findsNWidgets(3));
  });

  testWidgets('Button Submit', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomeEksplorasi(),
    ));
    Finder submitButton = find.byType(ElevatedButton);
    expect(submitButton, findsOneWidget);
  });
}
