import 'package:flutter/material.dart';

import '../data.dart';

class CustomSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Image.asset('assets/logo.png'),
      ),
      actions: [
        IconButton(icon: Icon(Icons.cast), onPressed: () {}),
        IconButton(
            icon: Icon(Icons.notifications_outlined), onPressed: () {}),
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(
            icon: CircleAvatar(
              foregroundImage: NetworkImage(currentUser.profileImageUrl),
            ),
            onPressed: () {}),
      ],
    );
  }
}
