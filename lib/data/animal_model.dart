class AnimalModel {
  late final String imageUrl;
  late final String name;
  late final String description;

  AnimalModel(this.imageUrl, this.name, this.description);
  AnimalModel.emptyConstructor(){
    imageUrl = "";
    name = "";
    description = "";
  }
}