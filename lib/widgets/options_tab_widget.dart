import 'package:flutter/material.dart';
import '../utils/app_layout.dart';

class OptionsTab extends StatelessWidget {
  final String option1, option2;
  const OptionsTab({super.key, required this.option1, required this.option2});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(2.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color(0xFFF4F6FD)),
        child: Row(
          children: [
            // airline tickets
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white),
              child:  Center(child: Text(option1)),
            ),
            //hotels
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.transparent),
              child:  Center(child: Text(option2)),
            )
          ],
        ),
      ),
    );
  }
}
