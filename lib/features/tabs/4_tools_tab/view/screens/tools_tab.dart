import 'package:flutter/material.dart';
import 'package:whats_app_task/features/tabs/4_tools_tab/view/models/tools_model.dart';
import 'package:whats_app_task/features/tabs/4_tools_tab/view/models/tools_services.dart';
import 'package:whats_app_task/features/tabs/4_tools_tab/view/widgets/item_row.dart';
import 'package:whats_app_task/features/tabs/4_tools_tab/view/widgets/tools_widget.dart';

class ToolsTab extends StatelessWidget {
  const ToolsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Performance in the last 7 days ",
              style: TextStyle(color: Colors.grey),
            ),
            Icon(
              Icons.info_outline,
              color: Colors.grey,
              size: 19,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 116,
          child: ListView.separated(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ToolsWidget(
                    toolsModel: toolsModel[index],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 22,
                  ),
              itemCount: toolsModel.length),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Grow Your Business",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            height: 20,
          ),
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => ItemRow(
            toolsServices: list1[index],
          ),
          itemCount: list1.length,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Organize Your Chats",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            height: 20,
          ),
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => ItemRow(
            toolsServices: list2[index],
          ),
          itemCount: list2.length,
        ),
      ],
    );
  }
}
