import 'package:flutter/material.dart';
import 'package:whats_app_task/features/tabs/4_tools_tab/view/models/tools_model.dart';

class ToolsWidget extends StatelessWidget {
   ToolsWidget({super.key,required this.toolsModel});

  ToolsModel toolsModel;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 116,
      height: 116,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
          border: Border.all(color: Colors.grey.withOpacity(.5))),
      child:
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(toolsModel.iconData,color: Colors.grey,),
            Text(toolsModel.sign,style: TextStyle(color: Colors.grey),),
            Spacer(),
            Text(toolsModel.lable,style: TextStyle(color: Colors.grey,fontSize: 9),)
          ],),
      ),
    );
  }
}
