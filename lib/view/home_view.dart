import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view_model/home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            viewModel.usingMainAddingServiceforHome();
          },
        ),
        body: Center(
          child: Column(
            children: [
              Text("value of counter is now ${viewModel.counting.abc}"),
              ElevatedButton(
                  onPressed: () {
                    viewModel.navigateToSecondPage();
                  },
                  child: Text("Navigated to 2nd page"))
            ],
          ),
        ),
      ),
    );
  }
}
