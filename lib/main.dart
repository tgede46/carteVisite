import 'package:cartevisite/view/add_card.dart';
import 'package:cartevisite/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main()  {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex=0;

  setCurrentIndex(int index){
    setState(() {
      _currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: [
            Text("Home"),
            Text('Ajout card')
          ][_currentIndex],
        ),
        body: [
          Home(),
          AddCard(),
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index)=> setCurrentIndex(index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor:  Colors.grey,
          elevation: 10,
          iconSize: 32,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card),
                label: 'Card'
            ),
          ],
        ),
      ),
    );
  }
}


