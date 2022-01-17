import 'package:flutter/material.dart';
import 'package:flutter_table_with_dio_and_provider/app_widget.dart';
import 'package:flutter_table_with_dio_and_provider/home/controller/statitics_repository.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => StatiticsRepository())],
    child: MyApp(),
  ));
}
