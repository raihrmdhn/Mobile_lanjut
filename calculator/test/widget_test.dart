import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:calculator/main.dart'; // Pastikan jalurnya sesuai dengan struktur proyek Anda

void main() {
  testWidgets('Counter increments test', (WidgetTester tester) async {
    // Membangun aplikasi dan memicu render pertama.
    await tester.pumpWidget(const MyApp());

    // Verifikasi bahwa counter dimulai dari 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Menekan tombol '+' dan memicu frame baru.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifikasi bahwa counter telah bertambah menjadi 1.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
