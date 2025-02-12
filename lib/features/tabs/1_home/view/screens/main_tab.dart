import 'package:flutter/material.dart';
import 'package:whats_app_task/features/tabs/1_home/view/screens/chats_screen.dart';
import 'package:whats_app_task/features/tabs/1_home/view/widgets/float_action_button.dart';
import 'package:whats_app_task/features/tabs/1_home/view/widgets/tabs_appbar.dart';
import 'package:whats_app_task/features/tabs/2_calls_tab/view/screens/calls_tab.dart';
import 'package:whats_app_task/features/tabs/3_stories_tab/view/screens/updates_tab.dart';
import 'package:whats_app_task/features/tabs/4_tools_tab/view/screens/tools_tab.dart';

class MainTab extends StatefulWidget {
  MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  int selectedIndex = 0;
  List<Widget> tabs = [ChatsScreen(), CallsTab(), UpdatesTab(), ToolsTab()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: appBar(
                index: selectedIndex,
                label: selectedIndex == 0
                    ? "WhatsApp"
                    : selectedIndex == 1
                        ? "Calls"
                        : selectedIndex == 2
                            ? "Updates"
                            : "Tools"),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: tabs[selectedIndex],
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
                BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/images/status.png",
                      color: Colors.white,
                      width: 27,
                    ),
                    label: "Updates"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.storefront), label: "Tools"),
              ],
              backgroundColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
            ),
            floatingActionButton: selectedIndex == 3
                ? null
                : floatingActionButton(
                    icon: selectedIndex == 0
                        ? Icons.add_comment
                        : selectedIndex == 1
                            ? Icons.add_call
                            : selectedIndex == 2
                                ? Icons.linked_camera
                                : null),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.startFloat));
  }
}
