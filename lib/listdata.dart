import 'package:flutter/material.dart';
import 'package:listdatademo/book.dart';

class ListData extends StatefulWidget {
  const ListData({super.key});

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
   List Books= [
    Book(
      name: 'Flutter is easy',
      cover: 'assets/images/Pattaraporn.png',
    ),
    Book(
        name: 'HTML and CSS',
        cover: 'assets/images/Micheal.png'),
    Book(
        name: 'Data Science',
        cover: 'assets/images/Somchai.png'),
    Book(
        name: 'React Native',
        cover: 'assets/images/Peter.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("Book Catalog"))),
      body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            ),
            itemCount: Books.length,
            itemBuilder: (BuildContext context, int index) {
                return   Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(Books[index].cover, width: 200, height: 150,),
                      Text(Books[index].name ,textAlign: TextAlign.center),
                    ]),
                );
            }),
    );
  }
}