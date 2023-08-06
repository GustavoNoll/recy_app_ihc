enum RewardCategories {
  DESCONTO,
  CUPOM,
  PRODUTO,
}

class RewardData {
  int id;
  int cost;
  String title;
  String description;
  List<RewardCategories> categorias;
  String imagePath;

  RewardData(
    this.id,
    this.cost,
    this.title,
    this.description,
    this.categorias,
    this.imagePath,
  );
}
