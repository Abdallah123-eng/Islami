import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/Bottoms_Sheets/Language_bottom_sheet.dart';
import 'package:islami_app/Bottoms_Sheets/Theme_bottom_sheet.dart';
import 'package:islami_app/Colors.dart';
import 'package:islami_app/providers/My_Provider.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "theme".tr(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  isDismissible: false,
                  builder: (context) {
                    return ThemeBottomSheet();
                  },
                  backgroundColor: Colors.transparent);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: AppColors.primary),
              ),
              child: Text(
                pro.appTheme == ThemeMode.dark
                    ?  "dark".tr()
                    :  "light".tr(),

                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "language".tr(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  isDismissible: false,
                  builder: (context) {
                    return LanguageBottomSheet();
                  },
                  backgroundColor: Colors.transparent);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: AppColors.primary),
              ),
              child: Text(
                "arabic".tr(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
