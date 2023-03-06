import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_state_management/app/app.locator.dart';
import 'package:stacked_state_management/app/app.router.dart';
import 'package:stacked_state_management/services/counter_service.dart';

class HomeViewModel extends BaseViewModel {
  int counter = 0;

  addCounter() {
    counter++;
    print(counter);
    rebuildUi();
  }

  final nav = locator<NavigationService>();
  navigateToSecondPage() {
    nav.navigateToSecondScreenView();
  }

  final counting = locator<CounterService>();

  usingMainAddingServiceforHome() {
    counting.mainAddingService();
    rebuildUi();
  }
}
