import 'package:flutter/material.dart';

class Item_Tasques extends StatelessWidget {

  final String textTasques;
  final bool valorCheckbox;
  const Item_Tasques( {super.key,
    required this.textTasques,
    required this.valorCheckbox,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.teal[300],
        ),
        child: Row(
          children: [
            //checbox
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Checkbox(
                activeColor: Colors.teal[200],
                checkColor: Colors.orange[200],
                side: BorderSide(
                  color: Colors.teal[200]!,
                  width: 2,
                ),
                value: valorCheckbox,
                onChanged: (valorRebut) {},
              ),
            ),
            //text
            Text(textTasques, style: TextStyle(color: Colors.orange[200], decoration:  valorCheckbox ? TextDecoration.lineThrough : TextDecoration.none),),
          ],
        ),
      ),
    );
  }
}
