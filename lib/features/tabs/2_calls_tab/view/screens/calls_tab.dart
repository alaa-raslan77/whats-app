import 'package:flutter/material.dart';
import 'package:whats_app_task/core/widgets/row_calls_chat.dart';
import 'package:whats_app_task/features/tabs/2_calls_tab/view/models/calls_model.dart';
import 'package:whats_app_task/features/tabs/2_calls_tab/view/widgets/calls_row.dart';

class CallsTab extends StatelessWidget {
  const CallsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => RowCallsChat(
              callsModel: calls[index],
              isCall: true,
              callORChat: Row(
                children: [
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
              ),
            ),
        separatorBuilder: (context, index) => SizedBox(
              height: 15,
            ),
        itemCount: calls.length);
  }
}
