import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:windows_app/pages/home_page.dart';
import 'package:windows_app/provider/provider_class.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderClass>(
      //create instance in create method
      create: (_) => ProviderClass(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
