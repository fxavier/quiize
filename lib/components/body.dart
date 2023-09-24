import 'package:flutter/material.dart';
import 'package:queezy/components/components.dart';
import 'package:queezy/config/app_colors.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProgressBar(),
                const SizedBox(height: 10),
                Text.rich(
                  TextSpan(
                    text: 'Pergunta 1',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                        ),
                    children: [
                      TextSpan(
                        text: '/10',
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.white.withOpacity(0.3),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Índico, Atlântico Norte, Atlântico Sul, Pacífico Norte, Pacífico Sul e  Ártico, são bacias de: ',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                      ),
                ),
                Option(text: 'A.	Seis oceanos'),
                Option(text: 'B.	Quatro oceanos'),
                Option(text: 'C.	Um único oceano'),
                Option(text: 'D.	Mil rios'),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.kWhite,
                    foregroundColor: AppColors.kPrimaryColor,
                    elevation: 16,
                    fixedSize: Size(MediaQuery.of(context).size.width * 80, 30),
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kBackgroundColor,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Próxima'),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
