import 'package:flutter/material.dart';

import '../model/item.dart';

class ItemComponentBitcoin extends StatelessWidget {
  final Item? item;

  const ItemComponentBitcoin({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color containerColor = Colors.red;
    if (item!.variavel > 0) { 
      containerColor = Colors.blue;
    }

    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        width: 50,
        height: 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Text('${item?.nome}')), 
            Row(
              children: [
                Text(
                  '${item?.valor.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 60,
                    height: 33,
                    decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        '${item?.variavel.toStringAsFixed(3)}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
