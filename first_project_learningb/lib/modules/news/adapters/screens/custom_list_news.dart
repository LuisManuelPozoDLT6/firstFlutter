import 'package:flutter/material.dart';

class CustomListNews extends StatelessWidget{
  final Map item;
  const CustomListNews({super.key, required this.item});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Image.asset(item['image'], height: 150, width: width, fit: BoxFit.fitWidth,),
          Container(
            padding: const EdgeInsets.all(16),
            child:  Align(alignment: Alignment.topLeft, child: Text(item['description'], style: const TextStyle(fontWeight: FontWeight.bold),),),
          ),
        ],
      ),
    );
  }
  
}