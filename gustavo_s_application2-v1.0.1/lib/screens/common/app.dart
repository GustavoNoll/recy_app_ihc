import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/screens/home/home.dart';
import 'package:gustavo_s_application2/screens/rewards/rewards.dart';

AppState? currentState;

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> with SingleTickerProviderStateMixin {
  TabController? mainAppTabController;

  @override
  void initState() {
    super.initState();
    mainAppTabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  void switchToTab(int index) {
    setState(() {
      mainAppTabController!.animateTo(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    currentState = this;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color.fromARGB(242, 242, 247, 255),
          appBar: AppBar(
            title: Text('ReciApp'),
          ),
          body: TabBarView(
            controller: mainAppTabController,
            children: [
              HomeScreen(),
              RewardsScreen(),
              HomeScreen(),
            ],
          ),
          bottomNavigationBar: Container(
            child: TabBar(
              controller: mainAppTabController,
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home', iconMargin: EdgeInsets.symmetric(vertical: 1), height: 50),
                Tab(icon: Icon(Icons.shopping_cart), text: 'Recompensas', iconMargin: EdgeInsets.symmetric(vertical: 1), height: 50),
                Tab(icon: Icon(Icons.settings), text: 'Configuraçãos', iconMargin: EdgeInsets.symmetric(vertical: 1), height: 50),
              ],
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey.shade600,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 0),
              indicatorColor: Colors.blue,
            ),
          ),
        )
    );
  }
}
