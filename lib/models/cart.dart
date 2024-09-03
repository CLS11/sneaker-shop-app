import 'package:flutter/material.dart';
import 'package:myapp/models/shoe.dart';

class Cart extends ChangeNotifier {
//Sale list
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Freakz',
      price: '256',
      description: 'Latest signature shoe',
      imagePath: 'lib/images/2.png',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '240',
      description: 'Life is better in running shoes',
      imagePath: 'lib/images/1.png',
    ),
    Shoe(
      name: 'KD treys',
      price: '300',
      description: 'Craft your own footprints',
      imagePath: 'lib/images/3.png',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '250',
      description: 'Make running the new walking',
      imagePath: 'lib/images/4.png',
    ),
  ];

//User cart
  List<Shoe> userCart = [];

//Getting items from sale list
  List<Shoe> purchaseList() {
    return shoeShop;
  }

//Get cart
  List<Shoe> getCart() {
    return userCart;
  }

//Adding items
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

//Removing items
  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
