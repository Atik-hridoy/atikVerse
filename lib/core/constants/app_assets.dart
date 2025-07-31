/// This file contains all the asset paths used in the application.
/// It provides a centralized place to manage all asset references.

class AppAssets {
  // Base paths
  static const String _baseImagePath = 'assets/images/';
  static const String _baseIconPath = 'assets/icons/';
  static const String _baseAnimationPath = 'assets/animations/';
  static const String _baseSvgPath = 'assets/svgs/';

  // Placeholder for images - add your actual image paths here
  static const String sunoLogo = '${_baseIconPath}Suno_Logo_2.webp';
  static const String logo = '${_baseImagePath}logo.png';
  static const String placeholder = '${_baseImagePath}placeholder.jpg';

  // Icons - add your icon paths here
  static const String homeIcon = '${_baseIconPath}home.png';
  static const String profileIcon = '${_baseIconPath}profile.png';

  // Animations - add your animation paths here
  static const String loadingAnimation = '${_baseAnimationPath}loading.json';
  static const String successAnimation = '${_baseAnimationPath}success.json';

  // SVGs - add your SVG paths here
  static const String logoIcon = '${_baseSvgPath}logo_icon.svg';

  // Add more assets as needed...

  /// Helper method to get an asset path with a given name
  static String getImagePath(String name) => '$_baseImagePath$name';
  static String getIconPath(String name) => '$_baseIconPath$name';
  static String getAnimationPath(String name) => '$_baseAnimationPath$name';
  static String getSvgPath(String name) => '$_baseSvgPath$name';
}
