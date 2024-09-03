import 'package:flutter/material.dart';
import 'package:myapp/components/shoe_tile.dart';
import 'package:myapp/models/shoe.dart';
import 'package:provider/provider.dart';
import 'package:myapp/models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // function to add the item to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    //Notifying the user
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Succesfully added to Cart!'),
        content: Text('Check your Cart!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) => Column(
        children: [
          // Search bar
          Container(
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(Icons.search, color: Colors.grey),
              ],
            ),
          ),

          // Messages
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'Fly higher than usual...',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),

          // Hot Picks
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'HOT PICKS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // Shoe list
          Expanded(
            child: ListView.builder(
              itemCount: value.shoeList().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // Getting a shoe from the list
                Shoe shoe = value.shoeList()[index];

                // Return the shoe tile
                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe),
                );
              },
            ),
          ),

          // Divider
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
            child: Divider(
              color: Colors.grey[300],
            ),
          ),
        ],
      ),
    );
  }
}
