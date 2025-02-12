import 'package:flutter/material.dart';
import 'package:whats_app_task/core/widgets/pop_up_menu/pop_up.dart';

AppBar appBar({required String label, required int index}) {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 26,
              )),
          index == 3
              ? SizedBox()
              : IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 26,
                  )),
          PopupMenuButton(
            iconColor: Colors.white,
            style: ButtonStyle(iconSize: WidgetStatePropertyAll(30)),
            itemBuilder: (context) {
              return index == 0
                  ? [
                      popupMenuItem(txt: "New message"),
                      popupMenuItem(txt: "Settings"),
                    ]
                  : index == 1
                      ? [
                          popupMenuItem(txt: "Clear call log"),
                          popupMenuItem(txt: "Calls"),
                        ]
                      : index == 2
                          ? [
                              popupMenuItem(txt: "Create channel"),
                              popupMenuItem(txt: "Status privacy"),
                              popupMenuItem(txt: "Settings"),
                            ]
                          : [popupMenuItem(txt: "Settings")];
            },
          )
        ],
      ),
    ),
    backgroundColor: Colors.transparent,
    leadingWidth: double.infinity,
  );
}
