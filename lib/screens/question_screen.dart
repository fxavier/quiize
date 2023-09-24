import 'package:flutter/material.dart';
import 'package:queezy/components/components.dart';
import 'package:queezy/config/app_colors.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kPrimaryColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: AppColors.kPrimaryColor,
          actions: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              child: Text('Skip'),
            ),
          ],
        ),
        body: Body());
  }
}
