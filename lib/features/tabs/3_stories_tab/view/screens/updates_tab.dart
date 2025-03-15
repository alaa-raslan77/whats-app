import 'package:flutter/material.dart';
import 'package:whats_app_task/features/tabs/3_stories_tab/view/models/channels_model.dart';
import 'package:whats_app_task/features/tabs/3_stories_tab/view/models/status_mode.dart';
import 'package:whats_app_task/features/tabs/3_stories_tab/view/widgets/channels_row.dart';
import 'package:whats_app_task/features/tabs/3_stories_tab/view/widgets/status_container.dart';

class UpdatesTab extends StatelessWidget {
  const UpdatesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Status",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 200,
            child: ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => StatusContainer(
                      statusModel: statusModel[index],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                itemCount: statusModel.length),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Text(
                "Channels",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Spacer(),
              Text(
                "Exploer ",
                style: TextStyle(color: Colors.green, fontSize: 16),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.green,
                size: 18,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ListView.separated(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => ChannelsRow(
                    channelsModel: channelModel[index],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 15,
                  ),
              itemCount: channelModel.length)
        ],
      ),
    );
  }
}
