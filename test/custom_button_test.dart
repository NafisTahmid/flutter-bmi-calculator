import 'package:bmi_calculator/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Testing custom button", (WidgetTester tester) async {
    //   Arrange
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomButton(text: 'Calculate', onPressed: () {}),
        ),
      ),
    );
    //   Act
    Finder expectedText = find.text('Calculate');
    Finder expectedWidget = find.byType(GestureDetector);
    Finder expectedColor = find.byWidgetPredicate(
      (widget) =>
          widget is Container && (widget as Container).color == Color(0xFFEB1555),
    );
    //   Assert
    expect(expectedText, findsOneWidget);
    expect(expectedWidget, findsOneWidget);
    expect(expectedColor, findsOneWidget);
    //   Assert
    expect(expectedText, findsOneWidget);
    expect(expectedWidget, findsOneWidget);
    expect(expectedColor, findsOneWidget);
  });
}
