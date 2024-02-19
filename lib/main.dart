import 'package:flutter/material.dart';
import 'package:flutter_application_1/book_details.dart';

void main() {
  runApp(const MaterialApp(
    home: Book(),
  ));
}

class Book extends StatefulWidget {
  const Book({Key? key}) : super(key: key);

  @override
  //_BookState createState() => _BookState();
  State<Book> createState() => _BookState();
}

List<BookDetails> bookList = [
  BookDetails(title: 'The Alchemist', author: 'Paulo Coelho'),
  BookDetails(title: 'The Monk Who Sold His Ferrari', author: 'Robin Sharma'),
];

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Material(
          child: ListView.builder(
            itemCount: bookList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.book),
                title: Text(bookList[index].title.toString()),
                //trailing: Icon(Icons.delete),
                trailing: Text(bookList[index].author.toString()),
              );
            },
          ),
        ))
      ],
    );
  }
}
