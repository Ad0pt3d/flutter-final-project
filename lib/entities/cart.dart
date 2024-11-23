import 'package:pokecart/entities/pokemon.dart';

class Cart {
  List<Pokemon> items = [];

  String getTotal() {
    double totalPrice = 0;

    for (var item in items) {
      totalPrice += item.price;
    }

    return totalPrice.toStringAsFixed(2);
  }

  void addToCart(Pokemon pokemon) {
    items.add(pokemon);
  }

  void removeFromCart(int idx) {
    items.removeAt(idx);
  }
}