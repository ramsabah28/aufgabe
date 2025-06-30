// Aufgabe 2
abstract class DatabaseRepository {
  List<Category>? getCategorys();

  List<Product>? getProducts();

  Product? getSingleProduct(UUID id);

  void addProduct(Product product);

  void addCategory(Category category);

  bool? updateProduct(Product product);

  bool? updateCategory(Category category);

  bool? deleteProduct(UUID id);
}

// Aufgabe 3

class MockDatabaseRepository implements DatabaseRepository {
  List<Category> categoryList = [];
  List<Product> productList = [];

  @override
  void addCategory(Category category) {
    categoryList?.add(category);
  }

  @override
  void addProduct(Product product) {
    productList?.add(product);
  }

  @override
  bool deleteProduct(UUID id) {
    final index = productList?.indexWhere((element) => element.id == id);
    if (index != -1) {
      productList?.removeAt(index!);
      return true;
    }
    return false;
  }

  @override
  List<Category>? getCategorys() {
    return categoryList;
  }

  @override
  List<Product>? getProducts() {
    return productList;
  }

  @override
  Product? getSingleProduct(UUID id) {
    final index = productList.indexWhere((element) => element.id == id);

    if (index != -1) {
      return productList[index];
    }
    return null;
  }

  @override
  bool? updateCategory(Category category) {
    final index = categoryList.indexWhere((element) => element.id == category.id);
    if (index != -1) {
      categoryList[index] = category;
      return true;
    }
    return false;
  }


  @override
  bool updateProduct(Product product) {
    final index = productList.indexWhere((element) => element.id == product.id);
    if (index != -1) {
      productList[index] = product;
      return true;
    }
    return false;
  }

}

//PLACEHOLDER////////______
class Product {
  get id => null;
}

class Category {
  get id => null;
}

class UUID {}
