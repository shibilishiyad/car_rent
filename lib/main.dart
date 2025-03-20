import 'package:car_rent_app/firebase_options.dart';
import 'package:car_rent_app/presentation/pages/auth.dart';
import 'package:car_rent_app/presentation/pages/car_deatils.dart';
import 'package:car_rent_app/presentation/pages/car_list.dart';
import 'package:car_rent_app/presentation/pages/splash.dart';
import 'package:car_rent_app/utils/screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const RentApp());
}

class RentApp extends StatelessWidget {
  const RentApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Builder(builder: (context) {
        ScreenUtil.init(context);

        return  CarDeatils();
      }),
    
      
    );
  }
}

