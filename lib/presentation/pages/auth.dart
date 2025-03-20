import 'package:car_rent_app/presentation/widgets/textfield.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore db =FirebaseFirestore.instance;
    TextEditingController _namecontroller=TextEditingController();
     TextEditingController _agecontroller=TextEditingController();
      TextEditingController _numbercontroller=TextEditingController();

    void _adduser(){

         final user={
      "name":_namecontroller.text,
      "age ":_agecontroller.text,
      "number":_numbercontroller.text
    };
    db.collection("user").add(user).then((DocumentReference doc)=>
    print("user add with id: ${doc.id}")
    );

    }
 
    return Scaffold(
      appBar: AppBar(
       
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 220),
          child: Column(
            children: [
             TextfieldWidget(controller: _namecontroller, hintText: "Enter your name "),
          SizedBox(height: 10,),
          TextfieldWidget(controller: _agecontroller, hintText: "Enter your age "),
          SizedBox(height: 10,),
         
          TextfieldWidget(controller: _numbercontroller, hintText: "Enter your number"),
          SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
    minimumSize: Size(300, 55), 
    textStyle: TextStyle(fontSize: 20)
  ),
                  
                  onPressed: () {
                  
                    _adduser();
                  },
                  child: Text('Go Back'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}