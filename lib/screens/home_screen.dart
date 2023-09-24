import 'package:flutter/material.dart';
import 'package:queezy/config/app_colors.dart';
import 'package:queezy/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: AppColors.kPrimaryColor),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications, color: AppColors.kPrimaryColor),
              ),
              IconButton(
                onPressed: () {},
                icon:
                    const Icon(Icons.settings, color: AppColors.kPrimaryColor),
              ),
            ],
          )
        ],
        backgroundColor: AppColors.kBackgroundColor,
      ),
      body: Container(
        color: AppColors.kBackgroundColor,
        child: Container(
          margin: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.kPrimaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/ocean1.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.50,
                ),
                Text(
                  'Ocean Go',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'Nível um',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'Vai responder questōes sobre oceanos, cada pergunta contêm 4 alternativas de respostas onde uma estará correcta. Devirta-se testando seus conhecimentos.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const QuestionScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppColors.kPrimaryColor,
                    elevation: 20,
                    fixedSize:
                        Size(MediaQuery.of(context).size.width * 0.8, 50),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('Jogar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
