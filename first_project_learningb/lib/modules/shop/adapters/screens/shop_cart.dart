import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ShopCart extends StatefulWidget{
  const ShopCart({super.key});

  @override
  State<ShopCart> createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> {
  @override
  
  void initState() async {
    super.initState();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.get("counter");
  }

  Widget build(BuildContext context) {
    final List items = ['item, item2, item3'];
    return 
     const Scaffold(
      body: Column(
        children: [
          SizedBox(height: 32,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: 
             ListCartShop(),
          ),
        ],
      ),
    );
  }
}

class ListCartShop extends StatelessWidget{
  const ListCartShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(padding: const EdgeInsets.symmetric(horizontal:8),
      child: Row(
        children: [
          Image.asset('assets/images/iphone15.jpg', width: 120, height: 120,),
           Container(width: 150, margin: const EdgeInsets.only(left: 8), 

           child: const Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text('Iphone 15 PRO MAX', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black54))),
                SizedBox(height: 8,),
              Text('Ejemplo de una descripción', style: TextStyle(color: Colors.black54)),
            ],
          ),),
          ElevatedButton(onPressed: (){}, child: const Text('Quitar'))
        ],
      ),),
    );
  }
}