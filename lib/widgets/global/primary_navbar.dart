import 'package:flutter/material.dart';
import 'package:atik_verse/core/utils/responsive_helper.dart';

class PrimaryNavBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onTap;

  const PrimaryNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  final List<NavigationDestination> _navItems = const [
    NavigationDestination(icon: Icon(Icons.home), label: 'Intro'),
    NavigationDestination(icon: Icon(Icons.code), label: 'Projects'),
    NavigationDestination(icon: Icon(Icons.work), label: 'Experience'),
    NavigationDestination(icon: Icon(Icons.school), label: 'Education'),
    NavigationDestination(icon: Icon(Icons.bar_chart), label: 'Skills'),
    NavigationDestination(icon: Icon(Icons.contact_mail), label: 'Contact'),
  ];

  @override
  Widget build(BuildContext context) {
    if (ResponsiveHelper.isMobile(context)) {
      return BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTap,
        items: _navItems
            .map(
              (item) =>
                  BottomNavigationBarItem(icon: item.icon, label: item.label),
            )
            .toList(),
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        backgroundColor: Theme.of(context).colorScheme.surface,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(
          context,
        ).colorScheme.onSurface.withOpacity(0.6),
        showSelectedLabels: true,
        showUnselectedLabels: false,
      );
    }

    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onTap,
      destinations: _navItems,
      height: 70,
      elevation: 10,
      backgroundColor: Theme.of(context).colorScheme.surface,
      indicatorColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
      labelBehavior: ResponsiveHelper.isTablet(context)
          ? NavigationDestinationLabelBehavior.onlyShowSelected
          : NavigationDestinationLabelBehavior.alwaysShow,
    );
  }
}
