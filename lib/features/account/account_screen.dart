import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state/state.dart';
import 'views/views.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(userProvider);

    return value.map(
      loading: (_) => const AccountLoadingView(),
      error: (_) => const AccountErrorView(),
      data: (data) => AccountDataView(
        user: data.value,
        onVerifyEmail: () => {},
      ),
    );
  }
}
