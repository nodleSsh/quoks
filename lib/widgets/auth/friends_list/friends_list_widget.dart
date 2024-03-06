import 'package:flutter/material.dart';
import 'package:social_vk/resources/resources.dart';

class FriendsListWidgets extends StatelessWidget {
  const FriendsListWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemExtent: 100,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: DecoratedBox(
            decoration: BoxDecoration(),
            child: Row(
              children: [
                Image(
                  image: AssetImage(AppImages.avatar),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
