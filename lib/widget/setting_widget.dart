import 'package:flutter/material.dart';


class SettingWidget extends StatelessWidget {
  const SettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      child: const Center(child: Text("Setting Screen"),),
    );
    
  }
}