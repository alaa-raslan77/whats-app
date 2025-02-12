import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToolsServices {
  IconData? iconData;
  String lable;
  String description;

  ToolsServices(
      {required this.iconData, required this.lable, required this.description});
}

List<ToolsServices> list1 = [
  ToolsServices(
      iconData: Icons.calendar_view_month,
      lable: "Catalog",
      description: "Display products and services"),
  ToolsServices(
      iconData: Icons.speaker_phone,
      lable: "Catalog",
      description: "Display products and services"),
];

List<ToolsServices> list2 = [
  ToolsServices(
      iconData: Icons.label_important_outline,
      lable: "Labels",
      description: "Organize chats and contacts"),
  ToolsServices(
      iconData: Icons.message_sharp,
      lable: "Greeting Message",
      description: "Automatically greet new customers"),
  ToolsServices(
      iconData: Icons.wifi_off_rounded,
      lable: "${"Out of Office"} Message",
      description: "Auto-reply when you're unavailable"),
];
