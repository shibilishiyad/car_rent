import 'package:car_rent_app/data/models/car.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final Car car;
  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(
            color: Colors.black12,
            spreadRadius: 5,
            blurRadius: 10
          )],
        ),
        child: Column(
          children: [
            Image.asset("assets/images/car_image.png", height: 120),
      
            Text(
              car.model,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/gps.png"),
                        Text('${car.distance.toStringAsFixed(0)}Km'),
                      ],
                    ),
                    const SizedBox(width: 3),
                    Row(
                      children: [
                        Image.asset("assets/images/pump.png"),
                        SizedBox(width: 2),
                        Text('${car.fualCapacity.toStringAsFixed(0)}L'),
                      ],
                    ),
                  
                  ],
                ),
                  Text('\$${car.pricePerHour.toStringAsFixed(2)
                    }',style:TextStyle(fontSize: 16,) ,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
