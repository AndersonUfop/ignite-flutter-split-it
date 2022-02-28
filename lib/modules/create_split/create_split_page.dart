import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/create_split_app_bar.dart';
import 'package:split_it/modules/create_split/widgets/stepper_next_button.dart';
import 'package:split_it/modules/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.purple,
    )
  ];

  var index = 0;

  void nextPage() {
    if (index < 2) {
      index++;
      setState(() {});
    }
  }

  void backPage() {
    if (index > 0) {
      index--;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.colors.backgroundPrimary,
        appBar: CreateSplitAppBarWidget(
          actualPage: index,
          onTapBack: backPage,
          size: pages.length,
        ),
        body: pages[index],
        bottomNavigationBar: Container(
            height: 72,
            child: Column(
              children: [
                Row(
                  children: [
                    StepperNextButtonWidget(label: "Cancelar", onTap: () {}),
                    Container(
                      width: 1,
                      height: 72,
                      color: AppTheme.colors.divider,
                    ),
                    StepperNextButtonWidget(
                        label: "Continuar",
                        onTap: () {
                          nextPage();
                        }),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
