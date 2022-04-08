import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:street_scene/models/car_model.dart';

class SelectedCard extends StatelessWidget {
  ShowCars showCars;

  SelectedCard({required this.showCars});

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> users =
        FirebaseFirestore.instance.collection('users').snapshots();
    return Scaffold(
      appBar: AppBar(
        title: Text(showCars.name),
      ),
      body: Container(
          child: StreamBuilder<QuerySnapshot>(
        stream: users,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong ');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text('loading');
          }
          final data = snapshot.requireData;
          return ListView.builder(
            itemCount: data.size,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(' ${data.docs[index]['car']} '),
                    Text('${data.docs[index]['engine']}'),
                    Text('${data.docs[index]['name']}')
                  ],
                ),
              );
            },
          );
        },
      )
          // Image.asset(
          //   'assets/images/' + showCars.imgName + '.jpg',
          //   fit: BoxFit.cover,
          // ),
          ),
    );
  }
}
