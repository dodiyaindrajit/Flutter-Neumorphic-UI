class Home {
  final bool isSideMenuActivate;

  const Home({
    required this.isSideMenuActivate,
  });

  Home copyWith({
    bool? isSideMenuActivate,
  }) {
    return Home(
      isSideMenuActivate: isSideMenuActivate ?? this.isSideMenuActivate,
    );
  }
}
