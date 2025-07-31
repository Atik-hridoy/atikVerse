import 'dart:ui';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String title;
  final String? subtitle;
  final String? imageAsset;
  final Widget? trailing;
  final VoidCallback? onTap;

  const CustomCard({
    super.key,
    required this.title,
    this.subtitle,
    this.imageAsset,
    this.trailing,
    this.onTap,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: AnimatedScale(
        scale: _hovering ? 1.03 : 1.0,
        duration: const Duration(milliseconds: 200),
        child: Container(
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: InkWell(
            onTap: widget.onTap,
            borderRadius: BorderRadius.circular(16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.imageAsset != null)
                    Stack(
                      children: [
                        Image.asset(
                          widget.imageAsset!,
                          width: double.infinity,
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                        // Gradient overlay
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.5),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Title overlay (optional)
                        Positioned(
                          bottom: 10,
                          left: 12,
                          right: 12,
                          child: Text(
                            widget.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 4,
                                  color: Colors.black54,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (widget.imageAsset == null)
                          Text(
                            widget.title,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        if (widget.subtitle != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              widget.subtitle!,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        if (widget.trailing != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: widget.trailing!,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
