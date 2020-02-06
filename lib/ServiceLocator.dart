import 'package:get_it/get_it.dart';
import './Messageservice.dart';

GetIt locator = GetIt();
void setupLocator() {
  locator.registerSingleton(TelAndSmsService());
}
