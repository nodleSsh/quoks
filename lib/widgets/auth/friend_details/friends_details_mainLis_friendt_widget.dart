import 'package:flutter/material.dart';
import 'package:social_vk/resources/resources.dart';
import 'package:social_vk/widgets/auth/friends_list/friends_list_widget.dart';

class FriendsList extends Friends {
  FriendsList(
      {required super.avatar,
      required super.name,
      required super.status,
      required super.id});
}

class FriendsDetailsMainLisFriendtWidget extends StatelessWidget {
  const FriendsDetailsMainLisFriendtWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
        color: const Color.fromARGB(255, 228, 228, 228),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 0, left: 10, bottom: 10),
              child: Text(
                'Friends',
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 27, 30, 46),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 230,
                    child: Scrollbar(
                      child: ListView.builder(
                        itemCount: 20,
                        itemExtent: 150,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (
                          BuildContext context,
                          int index,
                        ) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 228, 228, 228),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    offset: const Offset(2, 0),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                clipBehavior: Clip.hardEdge,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(AppImages.avatar),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Irina Crowd',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF272829),
                                            ),
                                          ),
                                          Text(
                                            'Online',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 135, 135, 135),
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}


 // ListView.builder(
            //   itemCount: 20,
            //   itemExtent: 80,
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (BuildContext context, int index) {
            //     return Container(
            //       child: Text('sdsjdh'),
            //     );
            //   },
            // ),