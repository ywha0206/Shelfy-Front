import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/custom_appbar.dart';
import 'books/books_page.dart';
import 'home/home_page.dart';
import 'memo/memo_page.dart';
import 'my/my_page.dart';
import 'search/search_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainPageState();
}

class _MainPageState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: IndexedStack(
            index: _selectedIndex,
            children: [
              HomeAppBar(),
              SearchAppBar(),
              BooksAppBar(),
            ],
          ),
        ),
        // IndexedStack 을 활용해 여러 화면을 동시에 호출하고 각 페이지의 상태를 기억함 ( 스크롤 위치 등 )
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            HomePage(),
            SearchPage(),
            BooksPage(),
            MemoPage(),
            MyPage(),
          ],
        ),
        bottomNavigationBar: SizedBox(
          // 가로 길이를 최대로 확장
          width: double.infinity,
          height: 70,
          child: Theme(
            data: Theme.of(context).copyWith(
              // 클릭 시 물결 애니메이션 제거
              splashFactory: NoSplash.splashFactory,
              // 클릭 시 원 모양 애니메이션 제거
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              // 4개 이상의 아이콘을 추가할 때 fixed 타입으로 변경 ( 아이콘 탭 시에도 위치 고정된 상태 유지 )
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              showUnselectedLabels: true,
              backgroundColor: Colors.white,
              selectedItemColor: const Color(0xFF4D77B2),
              unselectedItemColor: Colors.grey.withOpacity(0.6),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book),
                  label: 'Books',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.pen),
                  label: 'Memo',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'My',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
