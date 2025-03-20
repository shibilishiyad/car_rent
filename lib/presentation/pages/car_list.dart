import 'package:car_rent_app/data/models/car.dart';
import 'package:car_rent_app/presentation/widgets/car_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});
  final List<Car> cars = [
    Car(
      distance: 879,
      fualCapacity: 50,
      model: "fortuner Gr",
      pricePerHour: 45,
    ),
    Car(
      distance: 879,
      fualCapacity: 50,
      model: "fortuner Gr",
      pricePerHour: 45,
    ),
    Car(
      distance: 879,
      fualCapacity: 50,
      model: "fortuner Gr",
      pricePerHour: 45,
    ),
    Car(
      distance: 879,
      fualCapacity: 50,
      model: "fortuner Gr",
      pricePerHour: 45,
    ),
    Car(
      distance: 879,
      fualCapacity: 50,
      model: "fortuner Gr",
      pricePerHour: 45,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: cars.length,
        
        itemBuilder: (context ,Index){
          return CarCard(car: cars[Index]);
        }),
    );
  }
}
