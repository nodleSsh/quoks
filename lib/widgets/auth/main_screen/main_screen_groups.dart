import 'package:flutter/material.dart';
import 'package:social_vk/resources/resources.dart';

class MyGroups {
  final String id;
  final String groupAvatar;
  final String groupsName;
  MyGroups(
      {required this.id, required this.groupAvatar, required this.groupsName});
}

class MainScreenGroups extends StatefulWidget {
  const MainScreenGroups({super.key});

  @override
  State<MainScreenGroups> createState() => _MainScreenGroupsState();
}

class _MainScreenGroupsState extends State<MainScreenGroups> {
  final _groups = [
    MyGroups(
      id: '1',
      groupAvatar: AppImages.city2,
      groupsName: 'Photo. TFP',
    ),
    MyGroups(
      id: '2',
      groupAvatar: AppImages.city,
      groupsName: 'Faster apps',
    ),
    MyGroups(
      id: '3',
      groupAvatar: AppImages.city,
      groupsName: 'English school',
    ),
    MyGroups(
      id: '4',
      groupAvatar: AppImages.city2,
      groupsName: 'Moscow city',
    ),
    MyGroups(
      id: '5',
      groupAvatar: AppImages.city,
      groupsName: 'Black Mirror',
    ),
    MyGroups(
      id: '6',
      groupAvatar: AppImages.city2,
      groupsName: 'Books',
    ),
    MyGroups(
      id: '7',
      groupAvatar: AppImages.city,
      groupsName: 'Yes or no',
    ),
  ];

  var _filterGroups = <MyGroups>[];

  final _searchController = TextEditingController();

  void _searchGroups() {
    final value = _searchController.text;
    if (value.isNotEmpty) {
      _filterGroups = _groups.where((MyGroups groups) {
        return groups.groupsName.toLowerCase().contains(value.toLowerCase());
      }).toList();
    } else {
      _filterGroups = _groups;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filterGroups = _groups;
    _searchController.addListener(_searchGroups);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(top: 85),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filterGroups.length,
          itemExtent: 100,
          itemBuilder: (BuildContext context, int index) {
            final groups = _groups[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    child: Column(
                      children: [
                        DecoratedBox(
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
                                      backgroundImage:
                                          AssetImage(groups.groupAvatar),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          groups.groupsName,
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
                              ],
                            ),
                          ),
                        ),
                      ],
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
