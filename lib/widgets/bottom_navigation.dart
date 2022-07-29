import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    Key? key
  }) : super(key: key );

  @override
  State<StatefulWidget> createState() => _BottomNavigationState();
}

class NavigationItem{
  const NavigationItem({
    required this.name,
    required this.page,
    required this.icon
  });

  final String name;
  final IconData icon;
  final String page;
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _itemIndex = 0;
  final List<NavigationItem> _items = const [
    NavigationItem(name: "Home", page: "home", icon: Icons.home_rounded),
    NavigationItem(name: "Places", page: "places", icon: Icons.place_rounded),
    NavigationItem(name: "Stories", page: "stories", icon: Icons.edit_rounded),
    NavigationItem(name: "Clans", page: "clans", icon: Icons.group_rounded),
    NavigationItem(name: "Profile", page: "profile", icon: Icons.account_circle)
  ];
  final animationController = AnimationController(vsync: this, duration: Duration(seconds: 1))

  void onItemClick(int index) {
    setState(() {
      _itemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [ BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 0, blurRadius: 15, offset: const Offset(0, 0)) ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(_items.length, (index) => MaterialButton(
            onPressed: () { onItemClick(index); },
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(_items[index].icon, size: _itemIndex == index ? 42 : 19),
                  if(_itemIndex != index) Padding(
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                      child: Text(_items[index].name, style: const TextStyle(fontSize: 12))
                  )
                ]
            ),
          )),
        ),
      )
    );
  }

}