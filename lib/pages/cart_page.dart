import 'package:flutter/material.dart';
import 'package:myapp/models/cart.dart';
import 'package:myapp/models/shoe.dart';
import 'package:provider/provider.dart';
import 'package:myapp/components/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            Text(
              'MY CART',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 25,
            ),

            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  //getting the shoe
                  Shoe individualShoe = value.userCart[index];

                  //returning the cart item
                  return CartItem(shoe: individualShoe);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
