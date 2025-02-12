import 'package:flutter/material.dart';
import 'package:whats_app_task/features/tabs/4_tools_tab/view/models/tools_services.dart';

class ItemRow extends StatelessWidget {
   ItemRow({super.key,required this.toolsServices});
  ToolsServices toolsServices;
  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(toolsServices.iconData,color: Colors.white,
            size: 30,),
          SizedBox(width: 20,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(toolsServices.lable,style: TextStyle(color: Colors.white),),
              Text(toolsServices.description,style: TextStyle(color: Colors.grey.withOpacity(.7)),)
            ],
          )
        ],
      ),
    )
    ;
  }
}
