
import 'package:widget_gallery_sa/screens/home_screen.dart';
import 'package:widget_gallery_sa/views/buttons_view.dart';
import 'package:widget_gallery_sa/views/forms_view.dart';
import 'package:widget_gallery_sa/views/home_view.dart';
import 'package:widget_gallery_sa/views/images_view.dart';
import 'package:widget_gallery_sa/views/lists_view.dart';
import 'package:widget_gallery_sa/views/table_view.dart';


String onHandleDrawerSelect(int index) {
  switch (index) {
    case 0:
      return HomeScreen.name;
    case 1:
      return FormsView.name;
    case 2:
      return ListsView.name;
    case 3:
      return ButtonsView.name;
    case 4:
      return ImagesView.name;
    case 5:
      return TableView.name;
    default:
      return HomeView.name;
  }
}

