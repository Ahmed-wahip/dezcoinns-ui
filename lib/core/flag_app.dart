class FlgaApp {
  static String getFlag(String code) {
    switch (code) {
      case 'en':
        return 'assets/icons/usa_flag.png';

      case 'ar':
        return 'assets/icons/algeria.png';
      default:
        return 'assets/icons/usa_flag.png';
    }
  }
}
