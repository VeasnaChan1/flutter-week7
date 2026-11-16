import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(children: [FavouriteCard(), FavouriteCard(), FavouriteCard()]),
    ),
  ),
);

class FavouriteCard extends StatefulWidget {
  const FavouriteCard({super.key});

  @override
  State<FavouriteCard> createState() => _FavouriteCardState();
}

class _FavouriteCardState extends State<FavouriteCard> {
bool _isFavourite = false;

void _changeColor(){
  setState(() {
    _isFavourite = !_isFavourite;
  });
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Title",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ),
          ),
      
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(onPressed : _changeColor, 
            icon: Icon(
              Icons.favorite,
              color : _isFavourite? Colors.pink : Colors.grey,
            ),
            ),
          ),
      
          Text("Description"),

          Divider(
            color: Colors.blueGrey,
            thickness: 2,
          )
        ],
      ),
    );
  }
}
