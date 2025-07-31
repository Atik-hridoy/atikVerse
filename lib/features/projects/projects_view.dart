import 'package:flutter/material.dart';
import 'package:atik_verse/widgets/global/custom_card.dart';
import 'package:atik_verse/core/constants/app_assets.dart';
import 'package:atik_verse/core/utils/responsive_helper.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);

    final cardWidth = isMobile
        ? MediaQuery.of(context).size.width * 0.85
        : isTablet
        ? MediaQuery.of(context).size.width * 0.6
        : 400.0;

    final projects = [
      {
        'title': 'Kontho',
        'subtitle': 'An AI music generator using lyrics and voice tone.',
        'image': AppAssets.sunoLogo,
      },
      {
        'title': 'Skill Share',
        'subtitle': 'Connects instructors with learners focused on coding.',
        'image': AppAssets.placeholder,
      },
      {
        'title': 'Fresh Mind',
        'subtitle': 'A fitness & wellness Django web app.',
        'image': AppAssets.placeholder,
      },
      {
        'title': 'Eco Tracker',
        'subtitle': 'Tracks your carbon footprint and sustainability habits.',
        'image': AppAssets.placeholder,
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Projects',
            style: Theme.of(
              context,
            ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 350,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: projects.length,
            separatorBuilder: (_, __) => const SizedBox(width: 20),
            itemBuilder: (context, index) {
              final project = projects[index];
              return SizedBox(
                width: cardWidth,
                child: CustomCard(
                  title: project['title']!,
                  subtitle: project['subtitle']!,
                  imageAsset: project['image']!,
                  trailing: TextButton(
                    onPressed: () {},
                    child: const Text("Explore"),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
