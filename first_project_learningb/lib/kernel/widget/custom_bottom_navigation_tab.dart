import 'package:flutter/material.dart';

class CustomBottomNavigationTab extends StatelessWidget{
  final int selectedIndex;
  final Function(int) onItemTapped;
  const CustomBottomNavigationTab({Key? key, required this.selectedIndex, required this.onItemTapped});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'Noticias')
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blueAccent,
      onTap: onItemTapped,
    );
  }
}