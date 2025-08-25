// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:smwu_202508/main.dart';

import 'collections.dart';
import 'conditional.dart';
import 'method.dart';

void main() {
  Method();

  var collection = Collections();
  // collection.listAdd();
  // collection.listRemove();
  // collection.mapController();
  // collection.practice();

  var conditional = Conditional();
  conditional.ifPractice(85);
  conditional.switchPractice(95);
}