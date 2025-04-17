import 'package:flutter/material.dart';
import 'package:myapp/model/restaurant.dart';
import 'package:myapp/restaurant/restaurant_screan.dart';

class RestaurantWidgets extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantWidgets({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context){
            return RestaurantScrean(restaurant: restaurant);
          })
        );
      },
      child: Row(
        spacing: 16,
        children: [
          Image.asset('assets/${restaurant.imagePath}', width: 72),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurant.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                children: List.generate(restaurant.stars.toInt(), (index) {
                  return Image.asset('assets/others/star.png', width: 16);
                }),
              ),
              Text('${restaurant.distance}km'),
            ],
          ),
        ],
      ),
    );
  }
}
