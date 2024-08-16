import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyNavBar extends StatelessWidget {
  final int selectedIndex;

  const MyNavBar({
    super.key,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        switch (index) {
          case 0:
            context.go('/dashboard');
            break;
          case 1:
            context.go('/product');
            break;
          case 2:
            context.go('/cashier');
            break;
          case 3:
            context.go('/report');
            break;
          case 4:
            context.go('/more');
            break;
        }
      },
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_work_rounded),
          label: 'Beranda',
        ),
        NavigationDestination(
          icon: Icon(Icons.food_bank_rounded),
          label: "Produk",
        ),
        NavigationDestination(
          icon: Icon(Icons.point_of_sale_rounded),
          label: 'Kasir',
        ),
        NavigationDestination(
          icon: Icon(Icons.data_exploration_rounded),
          label: 'Report',
        ),
        NavigationDestination(
          icon: Icon(Icons.linear_scale),
          label: 'Lainnya',
        ),
      ],
    );
  }
}
