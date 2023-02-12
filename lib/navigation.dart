import 'package:flipcartgetxproject/acountpage.dart';
import 'package:flipcartgetxproject/cartpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'categories.dart';
import 'home.dart';
import 'notification.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: IconButton(
                  onPressed: () {
                    Get.to(() => const HomePage());
                  },
                  icon: const Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                  ),
                ),
                label: 'home'),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Get.to(() => const Categories());
                },
                icon: const Icon(
                  Icons.category_outlined,
                  color: Colors.grey,
                ),
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Get.to(() => const NotificationPage());
                },
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.grey,
                ),
              ),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Get.to(() => const Acountpage());
                },
                icon: const Icon(
                  Icons.person_outline_sharp,
                  color: Colors.grey,
                ),
              ),
              label: 'Acount',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Get.to(() => const Cartpage());
                },
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.grey,
                ),
              ),
              label: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
