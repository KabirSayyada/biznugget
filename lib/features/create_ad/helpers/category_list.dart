class CategoryList {
  CategoryList({required this.title});

  final String title;

  factory CategoryList.fromJson(Map<String, dynamic> json) {
    return CategoryList(
      title: json['title'],
    );
  }
}

List<CategoryList> categoryList = [
  CategoryList(title: "Food and Wine"),
  CategoryList(title: "Livestock"),
  CategoryList(title: "Industrial equipment & tools"),
  CategoryList(title: "Interior"),
  CategoryList(title: "Appliances"),
  CategoryList(title: "Kids"),
  CategoryList(title: "Fashion"),
  CategoryList(title: "Electronics"),
  CategoryList(title: "Repaire & Construction"),
  CategoryList(title: "Automobile "),
  CategoryList(title: "Grocery"),
  CategoryList(title: "Health"),
  CategoryList(title: "Cosmetics"),
  CategoryList(title: "Computing"),
  CategoryList(title: "Real Estate"),
];
