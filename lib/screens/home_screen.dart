import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matchbuddy_demo/custom_widgets/chat_list_widget.dart';
import 'package:matchbuddy_demo/custom_widgets/horizontal_list_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(CupertinoIcons.search),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Functionality Not Working")));
                        }),
                    Text(
                      "Contacts",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 20.0),
                    ),
                    IconButton(
                        icon: Icon(CupertinoIcons.ellipsis),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Functionality Not Working")));
                        })
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ONLINE",
                      style: TextStyle(color: Colors.grey),
                    ),
                    InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Functionality Not Working")));
                      },
                      child: Text(
                        "+ ADD FRIENDS",
                        style: TextStyle(
                            color: Colors.orangeAccent[100],
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 100.0,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return OnlineFriendWidget(
                        index: index,
                        isChatDesign: false,
                      );
                    },
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                return ChatListWidget(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Functionality Not Working")));
                  },
                  index: index,
                  title: index % 2 == 0 ? "MatchBuddy" : "Shivam Maindola",
                  message: index.isEven ? 0 : 3,
                  time: '15:12',
                  subtitle: 'What Are You Doing',
                );
              }, childCount: 10))
            ],
          ),
        ),
      ),
    );
  }
}
