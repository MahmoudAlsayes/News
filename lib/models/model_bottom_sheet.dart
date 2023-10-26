import 'package:easy_localization/easy_localization.dart';
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
            InkWell(
              onTap: () {
                context.setLocale(Locale('ar'));
              },
                child: Text("Arabic",style: TextStyle(fontSize: 25),)),
            SizedBox(
              height: 15,
            ),
            InkWell(
                onTap: () {
                  context.setLocale(Locale('en'));
                },child: Text("Engilsh",style: TextStyle(fontSize: 25),)),
          ],
        ),
      ),
    );
  }
}
