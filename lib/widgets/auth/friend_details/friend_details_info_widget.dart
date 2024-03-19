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
          AvatarProfileWidget(),
          SizedBox(
            height: 20,
          ),
          FriendStatusWidget(),
          SizedBox(
            height: 20,
          ),
          InteractionWidgetFriend(),
        ],
      ),
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
    //вынести в отдельный объект при рефакторе
    final textStyls = TextStyle(
      color: Color.fromARGB(255, 117, 120, 127),
      fontWeight: FontWeight.w600,
      fontSize: 15,
    );
    return Column(
      children: [
        const Text(
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
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.place_outlined,
              color: Color.fromARGB(255, 117, 120, 127),
              size: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'Moscow',
              style: textStyls,
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.school_outlined,
              color: Color.fromARGB(255, 117, 120, 127),
              size: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'HTG',
              style: textStyls,
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.info_outline,
              color: Color.fromARGB(255, 117, 120, 127),
              size: 20,
            ),
          ],
        ),
      ],
    );
  }
}

class InteractionWidgetFriend extends StatelessWidget {
  const InteractionWidgetFriend({super.key});

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
            style: IconButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 196, 200, 212),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                )),
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
            style: IconButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 196, 200, 212),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                )),
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
            style: IconButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 196, 200, 212),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                )),
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
