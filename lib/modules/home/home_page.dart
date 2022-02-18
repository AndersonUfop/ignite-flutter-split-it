import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar_widget.dart';
import 'package:split_it/modules/home/widgets/info_card_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/shared/models/event_model.dart';

import 'widgets/event_tile_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final events = [
    EventModel(
        created: DateTime.now(), title: "Churrasco", value: 100, people: 2),
    EventModel(
        created: DateTime.now(), title: "Churrasco", value: 100, people: 2),
    EventModel(
        created: DateTime.now(), title: "Churrasco", value: -50, people: 2),
    EventModel(
        created: DateTime.now(), title: "Churrasco", value: 100, people: 2),
    EventModel(
        created: DateTime.now(), title: "Churrasco", value: -33, people: 2),
    EventModel(
        created: DateTime.now(), title: "Churrasco", value: 100, people: 2),
  ];
  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
        appBar: AppBarWidget(
            user: user,
            onTapAddButton: () {
              print("CLICOU");
            }),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...events
                      .map(
                        (e) => EventTileWidget(model: e),
                      )
                      .toList()
                ],
              ),
            )));
  }
}
