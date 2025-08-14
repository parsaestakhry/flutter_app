import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifires.dart';
import 'package:flutter_app/views/pages/home_page.dart';
import 'package:flutter_app/views/pages/profile_page.dart';
import 'package:flutter_app/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Flutter App")),
            actions: [
              IconButton(
                onPressed: () {
                  isDarkModeNotifier.value = !value;
                },
                icon: Icon(Icons.light_mode),
              ),
            ],
          ),
          body: ValueListenableBuilder(
            valueListenable: selectedPageNotifier,
            builder: (context, selectedPage, child) {
              return pages.elementAt(selectedPage);
            },
          ),
          bottomNavigationBar: NavbarWidget(),
        );
      },
    );
  }
}
