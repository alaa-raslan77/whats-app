import 'package:flutter/material.dart';
import 'package:whats_app_task/core/widgets/row_calls_chat.dart';
import 'package:whats_app_task/features/tabs/2_calls_tab/view/models/calls_model.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.white),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 13, horizontal: 25),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.transparent)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.transparent)),
                fillColor: Colors.grey.withOpacity(.5),
                filled: true),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 15,
            ),
            itemBuilder: (context, index) {
              return RowCallsChat(
                callsModel: callsModel[index],
                callORChat: Text(callsModel[index].time ?? "",
                    style: TextStyle(color: Colors.grey)),
                isCall: false,
              );
            },
            itemCount: callsModel.length,
          ),
        )
      ],
    );
  }
}
