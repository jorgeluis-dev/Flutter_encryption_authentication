import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//RandomWords
class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
//FIM

//myapp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); // Add this line.
    return MaterialApp(
      title: 'Welcome to Jorge',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Jorge'),
        ),
        body: Center(
          // Drop the const, and
          //child: Text('Hello World'),        // Replace this text...
          child: RandomWords(), // With this text.
        ),
      ),
    );
  }
}
