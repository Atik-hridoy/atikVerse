import 'package:flutter/material.dart';
import 'package:atik_verse/core/utils/responsive_helper.dart';
import 'package:atik_verse/widgets/global/primary_navbar.dart';
import 'package:atik_verse/features/intro/intro_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();

  final introKey = GlobalKey();
  final projectsKey = GlobalKey();
  final experienceKey = GlobalKey();
  final educationKey = GlobalKey();
  final skillsKey = GlobalKey();
  final contactKey = GlobalKey();

  int _selectedIndex = 0;
  final sectionKeys = <int, GlobalKey>{};

  @override
  void initState() {
    super.initState();
    sectionKeys.addAll({
      0: introKey,
      1: projectsKey,
      2: experienceKey,
      3: educationKey,
      4: skillsKey,
      5: contactKey,
    });
  }

  void _onNavTap(int index) {
    setState(() => _selectedIndex = index);
    final context = sectionKeys[index]?.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  Widget _buildSection(GlobalKey key, String title, Color color) {
    return Container(
      key: key,
      height:
          MediaQuery.of(context).size.height *
          (ResponsiveHelper.isMobile(context) ? 0.8 : 1.0),
      width: double.infinity,
      color: color,
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveHelper.isMobile(context)
            ? 16.0
            : ResponsiveHelper.isTablet(context)
            ? 32.0
            : 64.0,
        vertical: 20.0,
      ),
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontSize: ResponsiveHelper.isMobile(context)
                ? 24
                : ResponsiveHelper.isTablet(context)
                ? 28
                : 32,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ResponsiveHelper.isMobile(context);

    return Scaffold(
      body: Column(
        children: [
          // Top Navbar (for larger screens)
          if (!isMobile)
            PrimaryNavBar(selectedIndex: _selectedIndex, onTap: _onNavTap),

          // Main content
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: [
                      // ✅ Replace placeholder with actual Intro Section
                      Container(key: introKey, child: const IntroSection()),

                      _buildSection(
                        projectsKey,
                        "Projects",
                        Colors.grey.shade100,
                      ),
                      _buildSection(
                        experienceKey,
                        "Experience",
                        Colors.grey.shade200,
                      ),
                      _buildSection(
                        educationKey,
                        "Education",
                        Colors.grey.shade300,
                      ),
                      _buildSection(skillsKey, "Skills", Colors.grey.shade400),
                      _buildSection(
                        contactKey,
                        "Contact",
                        Colors.grey.shade500,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Bottom Navbar (for mobile)
          if (isMobile)
            PrimaryNavBar(selectedIndex: _selectedIndex, onTap: _onNavTap),
        ],
      ),
    );
  }
}
