import 'package:flutter/material.dart';
import 'package:whats_app_task/features/tabs/3_stories_tab/view/models/status_mode.dart';

class StatusContainer extends StatelessWidget {
   StatusContainer({super.key,required this.statusModel});

   StatusModel statusModel;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              statusModel.bigImg,
            ),
            fit: BoxFit.cover,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(statusModel.smallImg),
            ),
            Spacer(),
            Text(statusModel.txt,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                fontSize: 12),)
          ],
        ),
      ),
    );
  }
}
