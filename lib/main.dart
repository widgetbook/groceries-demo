import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'root/root.dart';

void main() async {
  await EasyLocalization.ensureInitialized();
  runApp(const App());
}
