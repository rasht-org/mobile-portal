import 'package:flutter/material.dart';
import 'package:portal/layout/main_layout.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BottomNavLayout(
        title: AppLocalizations.of(context)!.appTitle,
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: const [
            Text("Today events")
          ],
        )
    );
  }

}