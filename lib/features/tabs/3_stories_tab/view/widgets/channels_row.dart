import 'package:flutter/material.dart';
import 'package:whats_app_task/features/tabs/3_stories_tab/view/models/channels_model.dart';

class ChannelsRow extends StatelessWidget {
   ChannelsRow({super.key,required this.channelsModel});

  ChannelsModel channelsModel;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(channelsModel.img),
        ),


        SizedBox(width: 25,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(channelsModel.lable,style: TextStyle(color: Colors.white,fontSize: 16),),
            Text(channelsModel.description,style: TextStyle(color: Colors.grey),)
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(channelsModel.date,style: TextStyle(color: Colors.green,
                fontSize: 12),),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Text(channelsModel.num,style: TextStyle(color: Colors.black,fontSize: 10),),
            )

          ],
        )
      ],
    );
  }
}
