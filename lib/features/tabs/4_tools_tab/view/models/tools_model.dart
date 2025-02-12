import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToolsModel {


  IconData? iconData;
  String sign;
  String lable;

  ToolsModel({required this.iconData,required this.sign,required this.lable});
}

List<ToolsModel> toolsModel =[

  ToolsModel(iconData: Icons.comment , sign: ".", lable: "Messages Sent"),
  ToolsModel(iconData: Icons.calendar_view_month , sign: "_ _", lable: "Catalog Views"),
  ToolsModel(iconData: Icons.loop_sharp , sign: "_ _", lable: "Status Views"),
];