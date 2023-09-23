import 'package:flutter/material.dart';
import 'package:queezy/config/app_colors.dart';
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
                color: AppColors.kPrimaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bem vindo ao Ocean Go',
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    Text(
                      'O melhor aplicativo para você que quer aprender sobre oceanos',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: AppColors.kPrimaryColor,
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                          elevation: 16,
                          fixedSize:
                              Size(MediaQuery.of(context).size.width * 80, 50)),
                      child: Text('Começar agora!'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
