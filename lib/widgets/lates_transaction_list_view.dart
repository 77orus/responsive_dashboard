import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatesTransactionListView extends StatelessWidget {
  const LatesTransactionListView({super.key});

  static const items = [
    UserInfoModel(
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      title: "Josua Nunito",
      subTitle: "Josh Nunito@gmail.com",
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      title: "Andi Madrani",
      subTitle: "AndiMadrani290@gmail",
      image: Assets.imagesAvatar1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: userInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
  }
}
