import 'package:flutter/material.dart';
import 'package:social_vk/resources/resources.dart';
import 'package:social_vk/widgets/auth/friend_details/friend_details_info_widget.dart';

class MainScreenProfile extends StatelessWidget {
  const MainScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
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
                height: 10,
              ),
              MainProfileButtonCreate(),
            ],
          ),
        ),
        Column(
          children: [
            MainProfileFriendsList(),
            SizedBox(
              height: 10,
            ),
            CreateNewsMainSreen(),
            SizedBox(
              height: 10,
            ),
            MyNewsCreate(),
          ],
        )
      ],
    );
  }
}

class MainProfileButtonCreate extends StatelessWidget {
  const MainProfileButtonCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 196, 200, 212),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        onPressed: () {},
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle_outline,
              color: Color.fromARGB(255, 70, 71, 75),
              size: 20,
            ),
            SizedBox(
              width: 8,
            ),
            SizedBox(),
            Text(
              'Publish',
              style: TextStyle(
                color: Color.fromARGB(255, 70, 71, 75),
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainProfileFriendsList extends StatelessWidget {
  const MainProfileFriendsList({super.key});

  @override
  Widget build(BuildContext context) {
    int friendsLenght = 3;
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 228, 228, 228),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$friendsLenght friend',
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Color(0xFF272829),
              ),
            ),
            const CircleAvatar(
              radius: 15,
              child: ClipOval(
                child: Image(
                  image: AssetImage(
                    AppImages.avatar,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateNewsMainSreen extends StatelessWidget {
  const CreateNewsMainSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 228, 228, 228),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 196, 200, 212),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.border_color,
                color: Color.fromARGB(255, 70, 71, 75),
                size: 20,
              ),
              SizedBox(
                width: 8,
              ),
              SizedBox(),
              Text(
                'Create an entry',
                style: TextStyle(
                  color: Color.fromARGB(255, 70, 71, 75),
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyNewsCreate extends StatelessWidget {
  const MyNewsCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 228, 228, 228),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'No posts',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Color(0xFF272829),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
