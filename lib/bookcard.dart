import 'package:flutter/material.dart';
import 'package:listdatademo/book.dart';

class BookCard extends StatelessWidget {
  final Book book;
  final Function delete;
  const BookCard({super.key, required this.book, required this.delete});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenwidth,
      child: Card(
        color: Color(0xff16EEE7),
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(book.cover, width:screenwidth*0.2),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        book.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      // Text(book.author),
                    ],
                  ),
                ],
              ),
              IconButton(onPressed: (){
                delete();
              }, icon: Icon(Icons.delete_forever))   ,
            ],
          ),
        ),
      ),
    );
  }
}
