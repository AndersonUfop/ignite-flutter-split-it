import 'package:flutter/material.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/modules/theme/app_theme.dart';

import '../add_button_widget.dart';
import '../info_card_widget.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final VoidCallback onTapAddButton;
  AppBarWidget({required this.onTapAddButton, required this.user})
      : super(
            child: Stack(
              children: [
                Container(
                  height: 230,
                  color: AppTheme.colors.backgroundSecondary,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 62),
                      child: ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(user.photoUrl!)),
                        title:
                            Text(user.name!, style: AppTheme.textStyles.appBar),
                        trailing: AddButtonWidget(onTap: onTapAddButton),
                      ),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InfoCardWidget(
                          value: 145,
                        ),
                        InfoCardWidget(
                          value: -48,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            preferredSize: Size.fromHeight(308));
}
