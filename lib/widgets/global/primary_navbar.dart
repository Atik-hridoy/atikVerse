import 'package:flutter/material.dart';
import 'package:atik_verse/widgets/global/constants.dart';
import 'package:atik_verse/widgets/global/navbar_item.dart';

class PrimaryNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const PrimaryNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: AppColors.surface,
      height: 65,
      indicatorColor: AppColors.primary.withOpacity(0.1),
      selectedIndex: selectedIndex,
      onDestinationSelected: onTap,
      destinations: navItems.map((item) {
        return NavigationDestination(icon: Icon(item.icon), label: item.label);
      }).toList(),
    );
  }
}
