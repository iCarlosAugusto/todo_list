import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';
import 'package:todo_list/views/favorites_view.dart';
import 'package:todo_list/views/task_list_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentPageIndex = 0;

   handleChangePage(index) {
      setState(() {
        currentPageIndex = index;
      });
    }

  @override
  Widget build(BuildContext context) {

    PageController pageController = PageController();
  
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: handleChangePage,
        children: const [
          TaskListView(),
          Favorites()
        ],
        
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "Taks"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorites")
        ],
      currentIndex: currentPageIndex,
        onTap: (index) {
          pageController.animateToPage(
            index,
            duration: const Duration(microseconds: 2000),
            curve: Curves.easeIn
          );
        },
      ),
    );
  } 
}