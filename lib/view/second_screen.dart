import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_state_management/view_model/second_screen_view_model.dart';

class SecondScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SecondScreenViewModel>.reactive(
      viewModelBuilder: () => SecondScreenViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: Center(
          child: Text(
              "This is my second Screen, here i am using value of ${viewModel.test.abc}"),
        ),
      ),
    );
  }
}
