import 'package:flutter/material.dart';
import 'package:whats_app_task/features/tabs/2_calls_tab/view/models/calls_model.dart';

class CallsRow extends StatelessWidget {
   CallsRow({super.key,required this.callsModel});
  CallsModel callsModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 35,
          child: ClipOval(
              child: Image.asset(
                callsModel.image,
              )),
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          children: [
            Text(
              callsModel.txt,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              callsModel.description,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.video_call,
              color: Colors.white,
            ))
      ],
    );
  }
}
