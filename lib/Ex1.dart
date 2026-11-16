import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: Center(
          child: Column(
            children: [
              SelectableButton(),
              SizedBox(
                height: 20,
              ),
              SelectableButton(),
              SizedBox(
                height: 20,
              ),
              SelectableButton(),
              SizedBox(
                height: 20,
              ),
              SelectableButton(),
            ],
          )
        ),
      ),
    ));


class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  String _content= "Not selected";
  Color _textColor = Colors.white;
  Color _backgroundColor = Colors.blue[500]!;


  void _change(){
    setState(() {
      _content ="selected";
      _textColor = Colors.black; 
       _backgroundColor = Colors.blue[50]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              width: 400,
              height: 100,
              child: ElevatedButton(
                  onPressed:_change,
                  style:  ElevatedButton.styleFrom(
          backgroundColor: _backgroundColor,
        ),
                  child: Center(
                    child: Text(_content,
                    style: TextStyle(
                      color: _textColor,
              
                    ),),
                  )),
            );
  }
}