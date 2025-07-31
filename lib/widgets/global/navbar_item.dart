import 'package:flutter/material.dart';
import 'package:atik_verse/widgets/global/constants.dart';

class NavBarItem {
  final IconData icon;
  final String label;

  const NavBarItem({required this.icon, required this.label});
}

const List<NavBarItem> navItems = [
  NavBarItem(icon: Icons.home, label: 'Home'),
  NavBarItem(icon: Icons.person, label: 'Intro'),
  NavBarItem(icon: Icons.work, label: 'Projects'),
  NavBarItem(icon: Icons.badge, label: 'Experience'),
  NavBarItem(icon: Icons.school, label: 'Education'),
  NavBarItem(icon: Icons.star, label: 'Skills'),
  NavBarItem(icon: Icons.mail, label: 'Contact'),
];
