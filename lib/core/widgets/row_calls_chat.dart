import 'package:flutter/material.dart';
import 'package:whats_app_task/features/tabs/2_calls_tab/view/models/calls_model.dart';

class RowCallsChat extends StatelessWidget {
  RowCallsChat(
      {super.key,
      required this.callsModel,
      required this.callORChat,
      required this.isCall});

  CallsModel callsModel;
  bool isCall;
  Widget callORChat;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 35,
          child: ClipOval(
              child: Image.asset(
            height: double.infinity,
            callsModel.image,
            fit: BoxFit.fill,
          )),
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              callsModel.txt,
              style: TextStyle(color: Colors.white),
            ),
            Row(
              children: [
                isCall
                    ? const Row(
                        children: [
                          Icon(
                            Icons.phone_missed_rounded,
                            color: Colors.green,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      )
                    : SizedBox(),
                Text(
                  callsModel.description,
                  style: TextStyle(color: Colors.white,fontSize: isCall?10:15),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        callORChat
      ],
    );
  }
}
