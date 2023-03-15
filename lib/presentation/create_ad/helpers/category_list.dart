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
List <CategoryList> serviceCategoryList = [
  CategoryList(title: "Design"),
  CategoryList(title: "Programming & Technology"),
  CategoryList(title: "Teaching"),
  CategoryList(title: "Digital Marketing"),
  CategoryList(title: "Automative Service"),
  CategoryList(title: "Legal service"),
  CategoryList(title: "Writing & Translation"),
  CategoryList(title: "DJ & Entertainment"),
  CategoryList(title: "Repaire & Construction"),
  CategoryList(title: "Automobile "),
  CategoryList(title: "Grocery"),
  CategoryList(title: "Health"),
  CategoryList(title: "Cosmetics"),
  CategoryList(title: "Computing"),
  CategoryList(title: "Real Estate"),
 
];


class ActivatePromoModel {
  ActivatePromoModel({required this.title, required this.description, required this.amount});
  final String title;
  final String description;
  final String amount;
}
List<ActivatePromoModel> activatePromoList = [
  ActivatePromoModel(title: "Silver", description: "5 uploads & 2 days promotion", amount: '1'),
  ActivatePromoModel(title: "Gold", description: "5 uploads & 2 days promotion", amount: '5'),
  ActivatePromoModel(title: "Platinum", description: "5 uploads & 14 days promotion", amount: '12'),
];

