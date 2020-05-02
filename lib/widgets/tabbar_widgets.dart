import "package:flutter/material.dart";

void main() => runApp(
  MaterialApp(
    home: MYTabBarWidget(),
    theme: ThemeData.dark(),
  )
);

/// 动态组件
class MYTabBarWidget extends StatefulWidget {
  @override
  _MYTabBarWidgetState createState() => _MYTabBarWidgetState();
}

class _MYTabBarWidgetState extends State<MYTabBarWidget> {
  var _currentPageIndex;
  List<Widget> _widgetList;

  // 初始化数据方法
  @override
  void initState() {
    _currentPageIndex = 0;
    _widgetList = [HomePage(),CategoryPage(),CartPage(),AccountPage()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetList[_currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        // 当前Tabbar的索引
        currentIndex: _currentPageIndex,
        // 设置点击事件
        onTap: (int index){
          // 刷新数据源
          this.setState((){
            _currentPageIndex = index;
          });
        },
        // 设置样式(默认为shifting，只显示选中Item的文字)
        type: BottomNavigationBarType.fixed,
        // Tabbar items
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("Category"),
            icon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            title: Text("Cart"),
            icon: Icon(Icons.call_end),
          ),
          BottomNavigationBarItem(
            title: Text("Account"),
            icon: Icon(Icons.account_box),
          ),
        ],
      ),
    );
  }
}


////////////////////////////////////////////////////////////////////////////////

// HomePage
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Text(
          "HomePage",
        ),
      ),
    );
  }
}
// CategoryPage
class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CategoryPage"),
      ),
      body: Center(
        child: Text(
          "CategoryPage",
        ),
      ),
    );
  }
}
// CartPage
class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CartPage"),
      ),
      body: Center(
        child: Text(
          "CartPage",
        ),
      ),
    );
  }
}
// AccountPage
class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AccountPage"),
      ),
      body: Center(
        child: Text(
          "AccountPage",
        ),
      ),
    );
  }
}