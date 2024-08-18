import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/Colors.dart';
import 'package:islami_app/providers/My_Provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
          color: pro.appTheme == ThemeMode.dark
              ? AppColors.primaryDark
              : Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      padding: EdgeInsets.all(18),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              pro.changeTheme(ThemeMode.light);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "light".tr(),
                  style: TextStyle(
                    color: pro.appTheme == ThemeMode.dark
                        ? Colors.white
                        : AppColors.primary,
                  ),
                ),
                pro.appTheme == ThemeMode.dark
                    ? SizedBox()
                    :Icon(
                  Icons.done,
                  size: 35,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              pro.changeTheme(ThemeMode.dark);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "dark".tr(),
                  style: TextStyle(
                    color: pro.appTheme == ThemeMode.dark
                        ? AppColors.yellow
                        : Colors.black,
                  ),
                ),
                pro.appTheme == ThemeMode.dark
                    ? Icon(
                  Icons.done,
                  size: 35,
                )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
