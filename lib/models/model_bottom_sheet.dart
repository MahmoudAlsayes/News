import 'package:flutter/material.dart';

class ModelBottomSheet extends StatelessWidget {
  const ModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Arabic",style: TextStyle(fontSize: 25),),
            SizedBox(
              height: 15,
            ),
            Text("Engilsh",style: TextStyle(fontSize: 25),),
          ],
        ),
      ),
    );
  }
}
