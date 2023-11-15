import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShopDetail extends StatelessWidget{
  const ShopDetail({super.key});
  

  @override
  
  Widget build(BuildContext context) {
    final dynamic rawArguments = ModalRoute.of(context)!.settings.arguments;
    final Map<String, dynamic> arguments = (rawArguments as Map<String, dynamic>?) ?? {};
    final title = arguments['title'] ?? '';
    final description = arguments['description'] ?? '';
    final initialRating = arguments['initialRating'] ?? 0.0;
    final imageUri = arguments['imageUri'] ?? 'assets/images/logo-utez.png';
    double widthImage = MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: ColorsApp.whiteColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(imageUri, width: widthImage, height: 250, fit: BoxFit.fitWidth),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  SizedBox(
                    width: 250,
                    child: Text(title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  RatingBar.builder(
                    initialRating: initialRating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 16,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                    ignoreGestures: true,
                  )
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 16), 
            child: Text(description,
            style: const TextStyle(fontSize: 16, color: Colors.black54),),)
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: (){}, 
        child: Text('Agregar al carrito'),
        style: OutlinedButton.styleFrom(
              foregroundColor: ColorsApp.successColor,
              backgroundColor: Colors.white,
              side: const BorderSide(color: ColorsApp.successColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}