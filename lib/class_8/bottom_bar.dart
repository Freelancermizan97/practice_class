import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final void Function(int) onTap;
  final int currentIndex;
  const BottomBar({super.key, required this.onTap, required this.currentIndex});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: widget.onTap,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.folder), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.assignment), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.save), label: "Home"),
      ],
    );
  }
}
