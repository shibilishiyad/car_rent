import 'package:car_rent_app/data/models/car.dart';
import 'package:car_rent_app/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarDeatils extends StatelessWidget {
  const CarDeatils({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline, size: 25),
            SizedBox(width: 5),
            Text("information", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
      body: Column(
        children: [
          CarCard(
            car: Car(
              distance: 879,
              fualCapacity: 50,
              model: "fortuner Gr",
              pricePerHour: 45,
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/user.png"),
                
                ),
                SizedBox(height: 10,),
                Text("shibili",style: TextStyle(fontWeight: FontWeight.bold),),
                 Text("\$4,523 ",style: TextStyle(color: Colors.grey),),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
