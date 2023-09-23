import 'package:flutter/material.dart';
import 'package:queezy/screens/screens.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/1.jpg',
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bem vindo ao Ocean Go',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const BaseScreen(),
                        ),
                      );
                    },
                    child: Text('Começar agora!'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
