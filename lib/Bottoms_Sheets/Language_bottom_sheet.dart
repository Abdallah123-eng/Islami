import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/Colors.dart';
import 'package:islami_app/providers/My_Provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    Locale currentLocal = context.locale;
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
              context.setLocale(Locale("en"));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "english".tr(),
                  style: TextStyle(
                    color: currentLocal == Locale('ar')
                        ? pro.appTheme == ThemeMode.dark
                            ? Colors.white
                            : Colors.black
                        : AppColors.primary,

                  ),
                ),
                currentLocal == Locale('ar')
                    ? SizedBox()
                    : Icon(
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
              context.setLocale(Locale("ar"));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "arabic".tr(),
                  style: TextStyle(
                    color: currentLocal != Locale('ar')
                        ? pro.appTheme == ThemeMode.dark
                            ? Colors.white
                            : Colors.black
                        : AppColors.primary,
                  ),
                ),
                currentLocal == Locale('ar')
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
