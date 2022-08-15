import 'package:flutter/material.dart';
import 'package:islami_app/tabs/Radio.dart';
import 'package:islami_app/tabs/hadeth/ahadeth.dart';
import 'package:islami_app/tabs/quran/quran.dart';
import 'package:islami_app/tabs/settings.dart';
import 'package:islami_app/tabs/tasbeh/tasbeh.dart';

List<Widget> tabs = [
  RadioScreen(),
  TasbehScreen(),
  AhadethScreen(),
  QuranScreen(),
  SettingsScreen(),
];
