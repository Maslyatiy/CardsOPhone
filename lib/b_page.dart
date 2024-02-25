import 'package:flutter/material.dart';
import 'item_liist_phone.dart'; // Подключаем класс Phone

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone SList'),
      ),
      body: ListView.builder(
        itemCount: phones.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhoneDetailPage(phone: phones[index]),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  Image.network(phones[index].image),
                  Text(phones[index].description),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class PhoneDetailPage extends StatelessWidget {
  final Phone phone;

  PhoneDetailPage({required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(phone.description),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center,   children:  [
            Image.network(phone.image),
            SizedBox(height: 20),
            Text(phone.description),
            Text(phone.description1, style: TextStyle(color: Colors.red, fontSize: 50),),
            ],)
          ],
        ),
      ),
    );
  }
}
