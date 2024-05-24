import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_items_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  List<DrawerItemModel> items = [
    const DrawerItemModel(
      title: "Dashboard",
      image: Assets.imagesDashboard,
    ),
    const DrawerItemModel(
      title: "My Transaction",
      image: Assets.imagesMyTransctions,
    ),
    const DrawerItemModel(
      title: "Statistics",
      image: Assets.imagesStatistics,
    ),
    const DrawerItemModel(
      title: "Wallet Account",
      image: Assets.imagesWalletAccount,
    ),
    const DrawerItemModel(
      title: "My Investments",
      image: Assets.imagesMyInvestments,
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
                print(index);
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: index == selectedIndex,
            ),
          ),
        );
      },
    );
  }
}
