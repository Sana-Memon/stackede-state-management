import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_state_management/services/counter_service.dart';
import 'package:stacked_state_management/view/home_view.dart';
import 'package:stacked_state_management/view/second_screen.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: SecondScreenView)
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: CounterService)
  ],
)
class App {}
