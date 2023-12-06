import 'package:flutter/material.dart';

import '../../../util/widgets/home_appbar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "Profile View",
                style: TextStyle(fontSize: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
