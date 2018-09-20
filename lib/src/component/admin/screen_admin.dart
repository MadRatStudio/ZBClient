import 'package:angular/angular.dart';
import 'package:client/src/route/routes.dart';

@Component(
  selector: 'screen-admin',
  templateUrl: 'screen_admin.html',
  styleUrls: const ['screen_admin.css'],
  exports: [Routes]
)
class ScreenAdmin extends OnInit{
  ScreenAdmin(){
    
  }
  
  @override
  void ngOnInit() {
    // TODO: implement ngOnInit
  }

}
