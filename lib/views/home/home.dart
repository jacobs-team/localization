// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:localization/l10n/l10n.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Localization Demo'),
        actions: [
          Center(
            child: PopupMenuButton(
              icon: Icon(
                Icons.language,
                color: Colors.white,
              ),
              itemBuilder: (context) {
                return L10n.all
                    .map((locale) => PopupMenuItem(
                          value: locale,
                          child: Text(
                            locale.fullName(),
                            style: TextStyle(color: Colors.black),
                          ),
                        ))
                    .toList();
              },
              onSelected: (Locale? value) {
                if (value != null) Get.updateLocale(value);
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              AppLocalizations.of(context)!.welcome,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
