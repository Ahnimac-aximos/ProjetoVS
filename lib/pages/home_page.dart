import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto15/controllers/home_controller.dart';
import 'package:projeto15/models/post_models.dart';
import 'package:projeto15/repositories/home_repository_imp.dart';
import 'package:projeto15/repositories/home_repository_mock.dart';
import 'package:projeto15/services/prefs_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                PrefsService.logout();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/loginpage', (_) => true);
              },
              icon: Icon(Icons.logout_outlined))
        ],
      ),
      body: ValueListenableBuilder<List<PostModel>>(
        valueListenable: _controller.posts,
        builder: (_, list, __) {
          return ListView.separated(
              physics: AlwaysScrollableScrollPhysics(),
              separatorBuilder: (_, __) => Divider(),
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (_, idx) => ListTile(
                    leading: Text(list[idx].id.toString()),
                    trailing: Icon(Icons.arrow_forward),
                    title: Text(list[idx].title),
                    onTap: () => Navigator.of(context)
                        .pushNamed('/details', arguments: list[idx]),
                  ));
        },
      ),
    );
  }
}
