

import 'package:flutter/material.dart';

import 'Fragment/AlarmFragment.dart';
import 'Fragment/BalanceFragment.dart';
import 'Fragment/ContactFragment.dart';
import 'Fragment/EmailFragment.dart';
import 'Fragment/HomeFragment.dart';
import 'Fragment/PersonFragment.dart';
import 'Fragment/SearchFragment.dart';
import 'Fragment/SettingsFragment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: "home", ),
                Tab(icon: Icon(Icons.search),text: "search",),
                Tab(icon: Icon(Icons.settings),text: "settings",),
                Tab(icon: Icon(Icons.email),text: "email",),
                Tab(icon: Icon(Icons.contact_emergency),text: "contact",),
                Tab(icon: Icon(Icons.person),text: "person",),
                Tab(icon: Icon(Icons.alarm),text: "alarm",),
                Tab(icon: Icon(Icons.account_balance),text: "balance",),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              //callinng pages by tabbar
              HomeFragment(),
              SearchFragment(),
              SettingsFragment(),
              EmailFragment(),
              ContactFragment(),
              PersonFragment(),
              AlarmFragment(),
              BalanceFragment(),
            ],
          ),
        )
    );
  }
}

