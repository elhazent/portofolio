import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numandev/about/about_screen.dart';
import 'package:numandev/home/component/home_header.dart';
import 'package:numandev/projects/projects_screen.dart';
import 'package:url_strategy/url_strategy.dart';

import 'contacts/contacts_screen.dart';
import 'index.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

void setTitle([String? title]) async {
  Future.microtask(() {
    SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
      label: title,
      primaryColor: Colors.blue.value, // your app primary color
    ));
  });
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Numan | home',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,
        canvasColor: primaryColor,
        textTheme: GoogleFonts.firaCodeTextTheme(Theme.of(context).textTheme).apply(bodyColor: Color(0xFFABB2BF)).copyWith(),
      ),
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      ShellRoute(
          builder: (context, state, child) {
            bool showAction = false;
            return Scaffold(
              resizeToAvoidBottomInset: true,
              body: Responsive(
                desktop: Stack(
                  children: [
                    NestedScrollView(
                      headerSliverBuilder: (context, innerBoxIsScrolled) {
                        return [
                          SliverPersistentHeader(
                            pinned: true,
                            delegate: PersistentHeader(
                                widget: Container(
                              width: 1065,
                              color: primaryColor,
                              padding: EdgeInsets.symmetric(vertical: 24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      context.go('/');
                                      setTitle('Numan | home');
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          logoImage,
                                          width: 16,
                                          height: 16,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'numan.dev',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          context.go('/');
                                          setTitle('Numan | home');
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'home', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/' ? Colors.white : Colors.grey))])),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          context.go('/projects');
                                          setTitle('Numan | project');
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/projects' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'projects', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/projects' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/projects' ? Colors.white : Colors.grey))])),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          context.go('/about-me');
                                          setTitle('Numan | about');
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/about-me' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'about-me', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/about-me' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/about-me' ? Colors.white : Colors.grey))])),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          context.go('/contacts');
                                          setTitle('Numan | contacts');
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/contacts' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'contacts', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/contacts' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/contacts' ? Colors.white : Colors.grey))])),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                          )
                        ];
                      },
                      body: child,
                      physics: NeverScrollableScrollPhysics(),
                    ),
                    Positioned(
                      left: 24,
                      top: 0,
                      child: Column(
                        children: [
                          Container(
                            width: 2,
                            height: 250,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                              onTap: () {
                                js.context.callMethod('open', ['https://www.linkedin.com/in/elhazent/']);
                              },
                              child: SvgPicture.asset(iconLinkedin)),
                          InkWell(
                              onTap: () {
                                js.context.callMethod('open', ['https://github.com/elhazent']);
                              },
                              child: SvgPicture.asset(iconGithub)),
                          SizedBox(
                            height: 4,
                          ),
                          InkWell(
                              onTap: () async {
                                js.context.callMethod('open', ['https://wa.me/6281233759694']);
                              },
                              child: Image.asset(
                                iconWhatsApp,
                                width: 24,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                tablet: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverPersistentHeader(
                        pinned: true,
                        delegate: PersistentHeader(
                            widget: Container(
                          width: 1065,
                          color: primaryColor,
                          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  context.go('/');
                                },
                                child: Row(
                                  children: [
                                    Image.asset(
                                      logoImage,
                                      width: 16,
                                      height: 16,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'numan.dev',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              PopupMenuButton(
                                offset: Offset(0.0, AppBar().preferredSize.height),
                                color: primaryColor,
                                icon: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 36,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        height: 1,
                                        width: 14,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                itemBuilder: (ctx) => [
                                  PopupMenuItem(
                                    child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'home', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/' ? Colors.white : Colors.grey))])),
                                    onTap: () {
                                      context.go('/');
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: SizedBox(
                                      width: 300,
                                      child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/projects' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'projects', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/projects' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/projects' ? Colors.white : Colors.grey))])),
                                    ),
                                    onTap: () {
                                      context.go('/projects');
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/about-me' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'about-me', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/about-me' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/about-me' ? Colors.white : Colors.grey))])),
                                    onTap: () {
                                      context.go('/about-me');
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/contacts' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'contacts', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/contacts' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/contacts' ? Colors.white : Colors.grey))])),
                                    onTap: () {
                                      context.go('/contacts');
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                      )
                    ];
                  },
                  body: Stack(
                    children: [
                      child,
                      Visibility(
                        visible: showAction,
                        child: Container(
                          color: primaryColor,
                          width: width(context),
                          height: height(context),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {
                                  context.go('/');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'home', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/' ? Colors.white : Colors.grey))])),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              TextButton(
                                onPressed: () {
                                  context.go('/projects');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/projects' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'projects', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/projects' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/projects' ? Colors.white : Colors.grey))])),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              TextButton(
                                onPressed: () {
                                  context.go('/about-me');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/about-me' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'about-me', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/about-me' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/about-me' ? Colors.white : Colors.grey))])),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              TextButton(
                                onPressed: () {
                                  context.go('/contacts');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/contacts' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'contacts', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/contacts' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/contacts' ? Colors.white : Colors.grey))])),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  physics: NeverScrollableScrollPhysics(),
                ),
                mobile: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverPersistentHeader(
                        pinned: true,
                        delegate: PersistentHeader(
                            widget: Container(
                          width: 1065,
                          color: primaryColor,
                          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  context.go('/');
                                },
                                child: Row(
                                  children: [
                                    Image.asset(
                                      logoImage,
                                      width: 16,
                                      height: 16,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'numan.dev',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              PopupMenuButton(
                                offset: Offset(0.0, AppBar().preferredSize.height),
                                color: primaryColor,
                                icon: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 36,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        height: 1,
                                        width: 14,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                itemBuilder: (ctx) => [
                                  PopupMenuItem(
                                    child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'home', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/' ? Colors.white : Colors.grey))])),
                                    onTap: () {
                                      context.go('/');
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: SizedBox(
                                      width: 300,
                                      child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/projects' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'projects', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/projects' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/projects' ? Colors.white : Colors.grey))])),
                                    ),
                                    onTap: () {
                                      context.go('/projects');
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/about-me' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'about-me', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/about-me' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/about-me' ? Colors.white : Colors.grey))])),
                                    onTap: () {
                                      context.go('/about-me');
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/contacts' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'contacts', style: TextStyle(fontSize: 16, fontWeight: state.fullPath == '/contacts' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/contacts' ? Colors.white : Colors.grey))])),
                                    onTap: () {
                                      context.go('/contacts');
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                      )
                    ];
                  },
                  body: Stack(
                    children: [
                      child,
                      Visibility(
                        visible: showAction,
                        child: Container(
                          color: primaryColor,
                          width: width(context),
                          height: height(context),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {
                                  context.go('/');
                                  setTitle('home');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'home', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/' ? Colors.white : Colors.grey))])),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              TextButton(
                                onPressed: () {
                                  context.go('/projects');
                                  setTitle('projects');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/projects' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'projects', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/projects' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/projects' ? Colors.white : Colors.grey))])),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              TextButton(
                                onPressed: () {
                                  context.go('/about-me');
                                  setTitle('about-me');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/about-me' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'about-me', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/about-me' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/about-me' ? Colors.white : Colors.grey))])),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              TextButton(
                                onPressed: () {
                                  context.go('/contacts');
                                  setTitle('contacts');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/contacts' ? FontWeight.w600 : FontWeight.w400, color: textPrimaryColor), children: [TextSpan(text: 'contacts', style: TextStyle(fontSize: 24, fontWeight: state.fullPath == '/contacts' ? FontWeight.w600 : FontWeight.w400, color: state.fullPath == '/contacts' ? Colors.white : Colors.grey))])),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  physics: NeverScrollableScrollPhysics(),
                ),
              ),
            );
          },
          routes: [
            GoRoute(
              path: '/',
              builder: (BuildContext context, GoRouterState state) {
                return const HomeScreen();
              },
              routes: <RouteBase>[
                GoRoute(
                  path: 'projects',
                  builder: (BuildContext context, GoRouterState state) {
                    return const ProjectsScreen();
                  },
                ),
                GoRoute(
                  path: 'about-me',
                  builder: (BuildContext context, GoRouterState state) {
                    return const AboutScreen();
                  },
                ),
                GoRoute(
                  path: 'contacts',
                  builder: (BuildContext context, GoRouterState state) {
                    return const ContactScreen();
                  },
                ),
              ],
            ),
          ])
    ],
  );
}
