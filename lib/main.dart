import 'dart:ui';

import 'package:bagzz/features/cart/presentation/cart.dart';
import 'package:bagzz/features/home/presentation/bloc/shop_now_bloc.dart';
import 'package:bagzz/features/home/presentation/pages/bag_description.dart';
import 'package:bagzz/features/home/presentation/pages/home_page.dart';
import 'package:bagzz/features/home/presentation/widgets/bag_heading.dart';
import 'package:bagzz/features/search/presentation/search_page.dart';
import 'package:bagzz/features/wishlist/presentation/widgets/wishlist_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomePageBloc>(
          create: (context) => HomePageBloc(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: MyScreen(),
      ),
    );
  }
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: IconButton(
                onPressed: () {},
                icon: Image.asset("images/app_bar_images/menu_icon.png"))),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset("images/app_bar_images/profile_photo.png")),
          const SizedBox(
            width: 13.5,
          ),
        ],
        title: Text(
          "bagzz",
          style: GoogleFonts.playfairDisplay(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      // body: HomePage(context),
      body: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (context, state) {
          switch (state.runtimeType) {
            case HomeClickedState:
              return getHomePage(context);
            case SearchClickedState:
              return getSearchPage();
            case OnClickedShopNowState:
              return getBagDescription();
            default:
              return getHomePage(context);
          }
        },
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(35),boxShadow: [BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 50)]),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Container(
          height: 60,

          child: NavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 2,
          
            indicatorColor: const Color.fromRGBO(0, 0, 0, 0),
            destinations: <Widget>[
              
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: NavigationDestination(
                  icon: Image.asset("images/navigation_bar_icons/home_icon.png"),
                  label: "",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: NavigationDestination(
                    icon: Image.asset(
                        "images/navigation_bar_icons/search_icon.png"),
                    label: ""),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: NavigationDestination(
                  icon: Image.asset("images/navigation_bar_icons/heart_icon.png"),
                  label: "",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:2),
                child: NavigationDestination(
                    icon:
                        Image.asset("images/navigation_bar_icons/cart_icon.png"),
                    label: ""),
              ),
            ],
            onDestinationSelected: (int index) {
              switch (index) {
                case 0:
                  BlocProvider.of<HomePageBloc>(context)
                      .add(HomeClickedEvent());
                  break;
                case 1:
                  BlocProvider.of<HomePageBloc>(context)
                      .add(SearchClickedEvent());
                  break;
                case 2:
                  //BlocProvider.of<HomePageBloc>(context).add()
                  showModalBottomSheet(
                    barrierColor: Colors.transparent,
                    showDragHandle: true,
                    isScrollControlled: true,
                    constraints: BoxConstraints.tight(Size(
                        MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height * .7)),
                    backgroundColor: Color.fromARGB(193, 247, 247, 247),
                    
                    context: context,
                    builder: (context) => getWishListBottomSheet(),
                  );
                  break;
                case 3:
                  showModalBottomSheet(
                    barrierColor: Colors.transparent,
                    showDragHandle: true,
                    isScrollControlled: true,
                    constraints: BoxConstraints.tight(Size(
                        MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height * .78)),
                    backgroundColor: Color.fromARGB(193, 247, 247, 247),
                    context: context,
                    builder: (context) => getMyCartBottomSheet(),
                  );
                  break;
                  break;
                default:
                  BlocProvider.of<HomePageBloc>(context)
                      .add(HomeClickedEvent());
                  break;
              }
            },
          ),
        ),
      ),
    );
  }
}
