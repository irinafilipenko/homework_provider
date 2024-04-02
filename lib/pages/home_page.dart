import 'package:flutter/material.dart';
import 'package:homework_provider/providers/home_page_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MyHomePageProvider state = Provider.of<MyHomePageProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homework Provider"),
        centerTitle: true,
        backgroundColor: Colors.grey,
        foregroundColor: state.newColorTitle,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 150,
                width: 150,
                color: state.newColorContainer,
              ),
              const SizedBox(
                height: 50,
              ),
              Switch(
                value: state.isSwitched,
                onChanged: (bool bool) {
                  state.onSwitched();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
