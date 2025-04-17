import 'package:flutter/material.dart';
import 'package:myapp/model/dish';
import 'package:myapp/model/restaurant.dart';

class RestaurantScrean extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantScrean({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
      ),
      body: Center(
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/${restaurant.imagePath}',
              width: 128,
            ),
            Text(
              "Mais pedidos",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Column(
              children: List.generate(restaurant.dishes.length, (index){
                // Dish dish = restaurant.dishes[index];
                return ListTile(

                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
