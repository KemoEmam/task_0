import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:task/core/layout/destination_entity.dart';
import 'package:task/features/cart/presentation/views/cart_view.dart';
import 'package:task/features/home/presentation/views/burger_view.dart';
import 'package:task/features/home/presentation/views/home_view.dart';

class NavigationBarLayout extends StatefulWidget {
  const NavigationBarLayout({super.key, required this.shell});

  final StatefulNavigationShell shell;

  @override
  State<NavigationBarLayout> createState() => _NavigationBarLayoutState();
}

class _NavigationBarLayoutState extends State<NavigationBarLayout> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        PersistentTabController(initialIndex: widget.shell.currentIndex);
  }

  @override
  void didUpdateWidget(covariant NavigationBarLayout oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_controller.index != widget.shell.currentIndex) {
      _controller.jumpToTab(widget.shell.currentIndex);
    }
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return destinationEntity.map((destination) {
      return PersistentBottomNavBarItem(
        icon: Image.asset(
          destination.icon,
          width: 30,
          height: 30,
          color: Colors.teal,
        ),
        inactiveIcon: Image.asset(
          destination.icon,
          width: 24,
          height: 24,
          color: Colors.grey,
        ),
        title: destination.label,
        activeColorPrimary: Colors.teal,
        inactiveColorPrimary: Colors.grey,
      );
    }).toList();
  }

  final List<Widget> _screens = [
    const HomeView(),
    const BurgerView(), // Shop screen
    const CartView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _screens,
        items: _navBarItems(),
        navBarHeight: 65,
        backgroundColor: Colors.white,
        decoration: NavBarDecoration(
          colorBehindNavBar: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .15),
              blurRadius: 4,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        navBarStyle: NavBarStyle.style1,
        onItemSelected: (index) {
          widget.shell.goBranch(index);
        },
      ),
    );
  }
}
