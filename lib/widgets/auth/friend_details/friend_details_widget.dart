import 'package:flutter/material.dart';
import 'package:social_vk/widgets/auth/friend_details/friend_details_info_widget.dart';

class FriendDetailsWidget extends StatefulWidget {
  final int friendsId;
  const FriendDetailsWidget({super.key, required this.friendsId});

  @override
  State<FriendDetailsWidget> createState() => _FriendDetailsWidgetState();
}

class _FriendDetailsWidgetState extends State<FriendDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8D9DA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF61677A),
        title: const Text(
          'Anna Pekun',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: const [
          FriendsDetailsInfoWidget(),
        ],
      ),
    );
  }
}
