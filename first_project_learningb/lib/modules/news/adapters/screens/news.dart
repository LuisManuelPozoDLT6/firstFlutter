import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:first_project_learningb/kernel/widget/custom_carrousel.dart';
import 'package:first_project_learningb/modules/account.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  
  Widget build(BuildContext context) {
    final List<Widget> itemList = [FisrtSection()];
    return Scaffold(
      appBar: AppBar(title: const Text('Noticias'), backgroundColor: ColorsApp.primaryColor),
      body: Center(child: CustomeCarousel(itemList: itemList, carouselHeight: 300,)),
    );
  }
}

class FisrtSection extends StatelessWidget{
  const FisrtSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Image.asset('assets/images/logo-utez.png', height: 150, width: width, fit: BoxFit.fitWidth,),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Align(alignment: Alignment.topLeft, child: Text('Utez - escuela de calidad', style: TextStyle(fontWeight: FontWeight.bold),),),
          ),
          ],
      ),
    );
  }
  
}