import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:client/src/component/admin/screen_admin.template.dart' as ng;
import 'package:client/src/service/service_api.dart';
import 'package:client/src/service/service_user.dart';

import 'main.template.dart' as self;

@GenerateInjector ([
  routerProvidersHash, // You can use routerProviders in production
  ClassProvider(ServiceApi, multi: false),
  ClassProvider(ServiceUser, multi: false)
])

final InjectorFactory injector = self.injector$injector;

void main() {
  runApp(ng.ScreenAdminNgFactory, createInjector: injector);
}
