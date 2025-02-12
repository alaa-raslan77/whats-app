import 'package:flutter/material.dart';

PopupMenuItem popupMenuItem({required String txt}) {
  return PopupMenuItem(
      child: Container(alignment: Alignment.topRight, child: Text(txt)));
}
