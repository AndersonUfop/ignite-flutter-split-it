import 'package:flutter/material.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/modules/theme/app_theme.dart';

import 'add_button_widget.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final VoidCallback onTapAddButton;
  AppBarWidget({required this.onTapAddButton, required this.user})
      : super(
            child: Container(
                height: 250,
                color: AppTheme.colors.backgroundSecondary,
                child: Padding(
                  padding: const EdgeInsets.only(top: 62),
                  child: ListTile(
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(user.photoUrl!)),
                    title: Text(user.name!, style: AppTheme.textStyles.appBar),
                    trailing: AddButtonWidget(onTap: onTapAddButton),
                  ),
                )),
            preferredSize: Size.fromHeight(250));
}
