import 'package:flutter/material.dart';
import 'package:social_vk/resources/resources.dart';
import 'package:social_vk/widgets/auth/friend_details/friend_details_widget.dart';

class Friends {
  final int id;
  final String avatar;
  final String name;
  final String status;
  Friends(
      {required this.avatar,
      required this.name,
      required this.status,
      required this.id});
}

class FriendsListWidgets extends StatefulWidget {
  const FriendsListWidgets({super.key});

  @override
  State<FriendsListWidgets> createState() => _FriendsListWidgetsState();
}

class _FriendsListWidgetsState extends State<FriendsListWidgets> {
  final _friends = [
    Friends(
      id: 1,
      avatar: AppImages.avatar,
      name: 'Anna Pekun',
      status: 'Online',
    ),
    Friends(
      id: 2,
      avatar: AppImages.avatar,
      name: 'Olga Orlova',
      status: 'Online',
    ),
    Friends(
      id: 3,
      avatar: AppImages.avatar,
      name: 'Patrick Salmon',
      status: 'Offline',
    ),
    Friends(
      id: 4,
      avatar: AppImages.avatar,
      name: 'Din Jarin',
      status: 'Online',
    ),
    Friends(
      id: 5,
      avatar: AppImages.avatar,
      name: 'Vaselina Rocks',
      status: 'Offline',
    ),
    Friends(
      id: 6,
      avatar: AppImages.avatar,
      name: 'Daniil Kroks',
      status: 'Offline',
    ),
    Friends(
      id: 7,
      avatar: AppImages.avatar,
      name: 'Lena Lena',
      status: 'Oflline',
    ),
    Friends(
      id: 8,
      avatar: AppImages.avatar,
      name: 'Tani Kate',
      status: 'Offline',
    ),
  ];

  var _filtredFriends = <Friends>[];
  final _searchController = TextEditingController();

  void _searchFriends() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filtredFriends = _friends.where((Friends friend) {
        return friend.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filtredFriends = _friends;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filtredFriends = _friends;
    _searchController.addListener(_searchFriends);
  }

  void _onFriendTap(int index) {
    final id = _friends[index].id;
    Navigator.of(context).pushNamed(
      '/main_screen/friend_details_widget',
      arguments: id,
    );
  }

  final statusStyle = const TextStyle(
    fontWeight: FontWeight.w500,
    color: Color.fromARGB(255, 135, 135, 135),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(top: 85),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filtredFriends.length,
          itemExtent: 100,
          itemBuilder: (BuildContext context, int index) {
            final friend = _friends[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 228, 228, 228),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(2, 0))
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(friend.avatar),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      friend.status,
                                      style: statusStyle,
                                    ),
                                    Text(
                                      friend.name,
                                      style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF272829),
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.chat_bubble_outline,
                                color: Color(0xFF31304D),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () => _onFriendTap(index),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Search',
              labelStyle: const TextStyle(
                color: Color.fromARGB(255, 135, 135, 135),
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              filled: true,
              fillColor: const Color.fromARGB(255, 228, 228, 228),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 87, 87, 125),
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
