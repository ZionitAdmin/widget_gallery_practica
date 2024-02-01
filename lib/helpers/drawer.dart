import 'package:widget_gallery_sa/screens/forms_screen.dart';
import 'package:widget_gallery_sa/screens/buttons_screen.dart';
import 'package:widget_gallery_sa/screens/home_screen.dart';
import 'package:widget_gallery_sa/screens/lists_screen.dart';
import 'package:widget_gallery_sa/screens/images_screen.dart';
import 'package:widget_gallery_sa/screens/table_screen.dart';
import 'package:widget_gallery_sa/views/home_view.dart';


String onHandleDrawerSelect(int index) {
  switch (index) {
    case 0:
      return HomeScreen.name;
    case 1:
      return FormsScreen.name;
    case 2:
      return ListsScreen.name;
    case 3:
      return ButtonsScreen.name;
    case 4:
      return ImagesScreen.name;
    case 5:
      return TableScreen.name;
    default:
      return HomeView.name; // o cualquier otro valor por defecto que prefieras
  }
}

