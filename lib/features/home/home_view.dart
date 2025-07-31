import 'package:flutter/material.dart';
import 'package:atik_verse/widgets/global/primary_navbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  void _onNavTap(int index) {
    setState(() => _selectedIndex = index);
    // Add your route logic here if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Selected Tab: $_selectedIndex")),
      bottomNavigationBar: PrimaryNavBar(
        selectedIndex: _selectedIndex,
        onTap: _onNavTap,
      ),
    );
  }
}
