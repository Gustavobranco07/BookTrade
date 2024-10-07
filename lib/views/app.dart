import 'package:flutter/material.dart';
import 'edit.profile.page.dart';
import 'favorite.books.page.dart';
import 'home.page.dart';
import 'new.book.page.dart';
import 'notifications.page.dart';
import 'publicated.books.page.dart';
import 'login.page.dart';
import 'register.page.dart';
import 'trade.history.page.dart';
import 'trade.offer.page.dart';
import 'trade.status.page.dart';
//import 'newaccount.page.dart';
//import 'chats.page.dart';
//import 'chat.page.dart';

class BookTradeApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/favoriteBooks": (context) => FavoriteBooksPage(),
        "/publicatedBooks": (context) => PublicatedBooksPage(),
        "/editProfile": (context) => EditProfilePage(),
        "/tradeOffer": (context) => TradeOfferPage(),
        "/register": (context) => RegistrationPage(),
        "/tradeHistory": (context) => TradeHistoryPage(),
        "/newBook": (context) => BookRegistrationPage(),
        "/notifications": (context) => NotificationsPage(),
        "/tradeStatus": (context) => TradeStatusPage(),
        //"/new-account": (context) => NewAccountPage(),
        //"/chats":(context) => ChatsPage(),
        //"/chat":(context) => ChatPage(),
      },
      initialRoute: "/login",
    );
  }
}