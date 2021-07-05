abstract class AppConfiguration {
  bool get isHome => false;
  bool get isResume => false;
  bool get isPortfolio => false;
  bool get isContact => false;
  bool get isBlog => false;
  @override
  String toString() {
    if (isHome) return 'Home Screen';
    if (isBlog) return 'Blog Screen';
    if (isResume) return 'Resume Screen';
    if (isContact) return 'Contact Screen';
    if (isPortfolio) return 'Portfolio Screen';
    return 'Unknown Screen';
  }
}

class HomeConfiguration extends AppConfiguration {
  @override
  bool get isHome => true;
}

class ResumeConfiguration extends AppConfiguration {
  @override
  bool get isResume => true;
}

class PortfolioConfiguration extends AppConfiguration {
  @override
  bool get isPortfolio => true;
}

class ContactConfiguration extends AppConfiguration {
  @override
  bool get isContact => true;
}

class BlogConfiguration extends AppConfiguration {
  @override
  bool get isBlog => true;
}
