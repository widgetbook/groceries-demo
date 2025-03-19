import 'package:flutter/material.dart' hide Icon;

import '../../data/data.dart';
import 'views/views.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: UserRepository().getByToken(0),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const AccountLoadingView();
        }

        if (snapshot.hasError) {
          return const AccountErrorView();
        }

        return AccountDataView(
          user: snapshot.data!,
          onVerifyEmail: () => {
            // TODO
          },
        );
      },
    );
  }
}
