import 'package:flutter/material.dart';
import 'first_widget.dart';
import 'second_widget.dart';
import 'third_widget.dart';
import '../widgets/text.dart';
import 'drawer_header.dart';
import 'drawer_item.dart';
import '../widgets/container.dart';
import '../widgets/padding_demo.dart';
import '../widgets/center_demo.dart';
import '../widgets/align_demo.dart';
import '../widgets/fitted_box.dart';
import '../widgets/aspect_ratio_demo.dart';
import '../widgets/row_demo.dart';
import '../widgets/gridview_demo.dart';
import '../widgets/listview_demo.dart';
import '../widgets/expanded_demo.dart';
import '../widgets/expansiontile_demo.dart';
import '../widgets/image_demo.dart';
import '../widgets/icon_demo.dart';
import '../widgets/button_demo.dart';
import '../widgets/button2_demo.dart';
import '../widgets/scaffold_demo.dart';
import '../widgets/appbar_demo.dart';
import '../widgets/placeholder_demo.dart';
import '../widgets/bottom_navigation_bar_demo.dart';
import '../widgets/tab_bar_demo.dart';
import '../widgets/material_app_demo.dart';
import '../widgets/popup_menu_Button.dart';
import '../widgets/input_selection_demo.dart';
import '../widgets/text_field_demo.dart';
import '../widgets/checkbox_demo.dart';
import '../widgets/radio_demo.dart';
import '../widgets/switch_demo.dart';
import '../widgets/slider_demo.dart';
import '../widgets/date_picker_demo.dart';
import '../widgets/dialog_demo.dart';
import '../widgets/bottom_sheet_demo.dart';
import '../widgets/expansion_panel_demo.dart';
import '../widgets/snack_bar_demo.dart';
import '../widgets/chip_demo.dart';
import '../widgets/tooltip_demo.dart';
import '../widgets/datetable_demo.dart';
import '../widgets/card_demo.dart';
import '../widgets/linear_progress_indicator_demo.dart';
import '../widgets/stepper_demo.dart';
class MyDrawer extends StatefulWidget {
  @override
  _MainDrawer createState() => _MainDrawer();
}

class _MainDrawer extends State<MyDrawer> {
  List<GroupData> dataList = [
    //widgets
    new GroupData("单个子控件的容器", [
      new GroupItem("Container", ContainerDemo()),
      new GroupItem("Padding", PaddingDemo()),
      new GroupItem("Center", CenterDemo()),
      new GroupItem("Align", AlignDemo()),
      new GroupItem("FittedBox", FittedBoxDemo()),
      new GroupItem("AspectRatio", AspectRatioDemo()),
    ]),
    new GroupData("多个子控件的容器", [
      new GroupItem("Row/Column", RowDemo()),
      new GroupItem("GridView", GridViewDemo()),
      new GroupItem("ListView", ListViewDemo()),
      new GroupItem("Expanded", ExpandedDemo()),
      new GroupItem("ExpansionTile", ExpansionTileDemo()),
    ]),
    new GroupData("基础控件", [
      new GroupItem("Image", ImageDemo()),
      new GroupItem("Icon", IconDemo()),
      new GroupItem("Button", ButtonDemo()),
      new GroupItem("Button2", Button2Demo()),
      new GroupItem("Scaffold", ScaffoldDemo()),
      new GroupItem("AppBar", AppBarDemo()),
      new GroupItem("Placeholder", PlaceholderDemo()),
    ]),
    new GroupData("Material", [
      new GroupItem("BottomNavigationBar", BottomNavigationBarDemo()),
      new GroupItem("TabBar", TabBarDemo()),
      new GroupItem("MaterialApp", MaterialAppDemo()),
      new GroupItem("PopupMenuButton", PopupMenuButtonDemo()),
      new GroupItem("TextField", TextFieldDemo()),
      new GroupItem("Checkbox", CheckboxDemo()),
      new GroupItem("Radio", RadioDemo()),
      new GroupItem("Switch", SwitchDemo()),
      new GroupItem("Slider", SliderDemo()),
      new GroupItem("DatePicker", DatePickerDemo()),
      new GroupItem("Dialog", DialogDemo()),
      new GroupItem("BottomSheet", BottomSheetDemo()),
      new GroupItem("ExpansionPanel", ExpansionPanelDemo()),
      new GroupItem("SnackBar", SnackBarDemo()),
      new GroupItem("Chip", ChipDemo()),
      new GroupItem("Tooltip", TooltipDemo()),
      new GroupItem("DataTable", DateTableDemo()),
      new GroupItem("Card", CardDemo()),
      new GroupItem("LinearProgressIndicator", LinearProgressIndicatorDemo()),
      new GroupItem("Stepper", StepperDemo()),
    ]),
  ];

  int _selectedItemIndex = 0;
  Widget _selectedItemWidget = StepperDemo();
  String _title = "Text1";

  _onSelectedItem(BuildContext context, int index, GroupItem item) {
    if (index == _selectedItemIndex) {
      return;
    }
    Navigator.pop(context);
    setState(() {
      _selectedItemIndex = index;
      _selectedItemWidget = item.widget;
      _title = item.name;
    });
  }

  List<Widget> _createDrawerItems(BuildContext context, List<GroupData> list) {
    var drawerItems = <Widget>[];
    drawerItems.add(DrawHeader());
    for (var i = 0; i < list.length; i++) {
      var itemList = <Widget>[];
      for (var j = 0; j < list[i].group.length; j++) {
        itemList.add(new ListTile(
          title: Text(list[i].group[j].name),
          selected: _selectedItemIndex == i + j,
          onTap: () {
            _onSelectedItem(context, i + j, list[i].group[j]);
          },
        ));
      }
      if (list[i].groupName != null) {
        drawerItems.add(new ExpansionTile(
          title: Text(list[i].groupName),
          children: itemList,
        ));
      }
    }
    return drawerItems;
  }

  @override
  Widget build(BuildContext context) {
    var groupList = _createDrawerItems(context, dataList);
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: _selectedItemWidget,
      drawer: Drawer(
          child: ListView(
        children: groupList,
      )),
    );
  }
}

class GroupData {
  String groupName;
  List<GroupItem> group;

  GroupData(String groupName, List<GroupItem> group) {
    this.group = group;
    this.groupName = groupName;
  }
}

class GroupItem {
  String name;
  Widget widget;

  GroupItem(String name, Widget widget) {
    this.name = name;
    this.widget = widget;
  }
}
