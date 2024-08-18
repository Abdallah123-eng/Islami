import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Ahadeth_module.dart';
import 'package:islami_app/ahadeth_details_screen.dart';
import 'package:islami_app/providers/ahadeth_datails_provider.dart';
import 'package:provider/provider.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AhadethDetailsProvider()..Loadahadethfile(),
      builder: (context, child) {
        var pro = Provider.of<AhadethDetailsProvider>(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/images/hadeth_logo.png",
              height: 219,
            ),
            Divider(),
            Text(
              "ahadeth".tr(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Divider(),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  thickness: 1,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AhadethDetailsScreen.routeName,
                            arguments: pro.allAhadeth[index]);
                      },
                      child: Text(
                        pro.allAhadeth[index].title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ));
                },
                itemCount: pro.allAhadeth.length,
              ),
            )
          ],
        );
      },
    );
  }
}
