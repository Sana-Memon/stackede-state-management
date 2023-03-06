import 'package:stacked/stacked.dart';
import 'package:stacked_state_management/app/app.locator.dart';
import 'package:stacked_state_management/services/counter_service.dart';

class SecondScreenViewModel extends BaseViewModel {
  final test = locator<CounterService>();
  usingMainAddingServiceforSecondPage() {
    test.mainAddingService();
    rebuildUi();
  }
}
