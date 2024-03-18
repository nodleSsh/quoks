import 'package:flutter/material.dart';
import 'package:social_vk/resources/resources.dart';

class FriendsDetailsInfoWidget extends StatelessWidget {
  const FriendsDetailsInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          AvatarProfileVidget(),
        ],
      ),
    );
  }
}

class AvatarProfileVidget extends StatelessWidget {
  const AvatarProfileVidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: Color.fromARGB(255, 236, 235, 235),
          child: Padding(
            padding: EdgeInsets.all(6.0),
            child: ClipOval(
              child: Image(
                image: AssetImage(
                  AppImages.avatar,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
