class HomeData {
  String name;
  bool isLoad;

  HomeData({required this.name, required this.isLoad});

  HomeData copyWith({String? name, bool? isLoad}) {
    return HomeData(
      name: name ?? this.name,
      isLoad: isLoad ?? this.isLoad,
    );
  }
}
