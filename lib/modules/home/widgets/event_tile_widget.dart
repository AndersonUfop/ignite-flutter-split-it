import 'package:flutter/material.dart';

import 'package:split_it/modules/home/widgets/icon_dolar_widget.dart';
import 'package:split_it/modules/theme/app_theme.dart';
import 'package:split_it/shared/models/event_model.dart';

class EventTileWidget extends StatelessWidget {
  final EventModel model;

  const EventTileWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  IconDollarType get type =>
      model.value >= 0 ? IconDollarType.receive : IconDollarType.send;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconDolarWidget(type: type),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(model.title,
                    style: AppTheme.textStyles.eventTileTitle),
                subtitle: Text(model.created.toIso8601String(),
                    style: AppTheme.textStyles.eventTileSubtitle),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("R\$ ${model.value}",
                        style: AppTheme.textStyles.eventTileMoney),
                    SizedBox(height: 5),
                    Text(
                        "${model.people} Pessoa${model.people == 1 ? '' : 's'}",
                        style: AppTheme.textStyles.eventTitlePeople),
                  ],
                ),
              ),
              Divider(
                color: AppTheme.colors.divider,
              )
            ],
          ),
        ))
      ],
    );
  }
}
