import 'package:flutter/material.dart';
import 'package:social_vk/resources/resources.dart';
import 'package:social_vk/style/text_style.dart';
import 'package:social_vk/widgets/auth/friend_details/friends_details_mainLis_friendt_widget.dart';

class FriendsDetailsInfoWidget extends StatelessWidget {
  const FriendsDetailsInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 0),
          child: AvatarProfileWidget(),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 0),
          child: FriendStatusWidget(),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 0),
          child: InteractionWidgetFriend(),
        ),
        const SizedBox(
          height: 20,
        ),
        const FriendsDetailsMainLisFriendtWidget(),
      ],
    );
  }
}

class AvatarProfileWidget extends StatelessWidget {
  const AvatarProfileWidget({super.key});

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

class FriendStatusWidget extends StatelessWidget {
  const FriendStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Try and shoot for the moon. Even if you miss, you’ll land among the stars',
          style: TextStyle(
            fontSize: 17,
            color: Color.fromARGB(255, 27, 30, 46),
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.fade,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.place_outlined,
              color: TextStylesProject.iconColor,
              size: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Moscow',
              style: TextStylesProject.textStyls,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.school_outlined,
              color: TextStylesProject.iconColor,
              size: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'HTG',
              style: TextStylesProject.textStyls,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              //тут заменить на iconButton
              Icons.info_outline,
              color: TextStylesProject.iconColor,
              size: 20,
            ),
          ],
        ),
      ],
    );
  }
}

class InteractionWidgetFriend extends StatelessWidget {
  InteractionWidgetFriend({super.key});

  final iconsStyle = IconButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 196, 200, 212),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 117, 120, 127),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Send message',
              style: TextStyle(
                color: Color.fromARGB(255, 236, 235, 235),
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          flex: 1,
          child: IconButton(
            style: iconsStyle,
            onPressed: () {},
            icon: const Icon(Icons.call_outlined),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          flex: 1,
          child: IconButton(
            style: iconsStyle,
            onPressed: () {},
            icon: const Icon(Icons.person_outline),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          flex: 1,
          child: TextButton(
            style: iconsStyle,
            onPressed: () {},
            child: const Text(
              '...',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    );
  }
}
