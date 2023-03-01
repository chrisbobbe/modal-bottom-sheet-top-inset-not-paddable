import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom sheet issue'),
        ),
        body: Center(child: Builder(builder: (context) {
          return ElevatedButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              constraints: const BoxConstraints(minHeight: 800),
              useSafeArea: false,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return SafeArea(
                  child: Column(
                    children: List.generate(4, (index) {
                      return MenuItemButton(
                          onPressed: () {},
                          child: Text('MenuItemButton $index'));
                    })));
              }),
            child: const Text('Show sheet'));
        })),
      ),
    );
  }
}
