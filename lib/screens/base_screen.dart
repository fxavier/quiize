import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:queezy/config/app_colors.dart';
import 'package:queezy/screens/screens.dart';
import 'package:queezy/store/store.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final NavigationStore navigationStore = GetIt.I<NavigationStore>();

  final List<Widget> _pages = [
    HomeScreen(),
    _buildPage('Page 2', Colors.green),
    _buildPage('Page 3', Colors.blue),
  ];

  final List<NavigationDestination> _destinations = const [
    NavigationDestination(
      selectedIcon: Icon(
        Icons.home,
        color: Colors.white,
      ),
      icon: Icon(
        Icons.home_outlined,
      ),
      label: 'Home',
    ),
    NavigationDestination(
      selectedIcon: Icon(
        Icons.add_chart,
        color: Colors.white,
      ),
      icon: Icon(Icons.add_chart),
      label: 'Respostas',
    ),
    NavigationDestination(
      selectedIcon: Icon(
        Icons.settings,
        color: Colors.white,
      ),
      icon: Icon(Icons.settings),
      label: 'Configurações',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Observer(
        builder: (_) => NavigationBar(
          onDestinationSelected: (int index) {
            navigationStore.setCurrentIndex(index);
          },
          indicatorColor: AppColors.kPrimaryColor,
          selectedIndex: navigationStore.index,
          destinations: _destinations,
          backgroundColor: AppColors.kBackgroundColor,
          elevation: 0,
        ),
      ),
      body: Observer(
        builder: (_) => _pages[navigationStore.index],
      ),
    );
  }

  static Widget _buildPage(String text, Color color) {
    return Container(
      color: color,
      alignment: Alignment.center,
      child: Text(text),
    );
  }
}
