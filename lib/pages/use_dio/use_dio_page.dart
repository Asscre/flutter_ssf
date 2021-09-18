import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:ssf/providers/use_dio/use_dio_provider.dart';

class UseDioPage extends StatelessWidget {
  const UseDioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UseDioProvider>(
      create: (_) => UseDioProvider(),
      builder: (BuildContext context, Widget? child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '欢迎👏使用flutter_ssf',
              style: TextStyle(
                fontSize: 32.sp,
              ),
            ),
            TextButton(
              onPressed: () => context.read<UseDioProvider>().getTestData(),
              child: const Text('test dio'),
            ),
          ],
        );
      },
    );
  }
}
