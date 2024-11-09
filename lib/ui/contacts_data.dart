import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/new_colors.dart';

class FirstPageContactsInfo {
  final int id;
  final String firstName;
  final String lastName;
  final String imageUrl;
  final String date;
  final String message;

  FirstPageContactsInfo({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.imageUrl,
    required this.date,
    required this.message,
  });
}

class CallContactInfo {
  final int id;
  final String firstName;
  final String lastName;
  final String date;
  final String time;
  final String imageUrl;
  final String callNumber;
  final IconData typeCallIcon;
  final IconData inOrOutTypeIcon;
  final Color callColor;
  final Color contactColor;

  CallContactInfo(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.date,
      required this.time,
      required this.imageUrl,
      required this.typeCallIcon,
      required this.inOrOutTypeIcon,
      required this.callColor,
      required this.callNumber,
      required this.contactColor});
}

class FirstPageData {
  static List<FirstPageContactsInfo> get firstPageInfo {
    return [
      FirstPageContactsInfo(
        id: 001,
        firstName: 'Reza',
        lastName: 'Karami',
        imageUrl: 'assets/profile_img/reza.jpg',
        date: '7/23/24',
        message: 'All is well',
      ),
      FirstPageContactsInfo(
          id: 002,
          firstName: 'Vin',
          lastName: 'Deisel',
          imageUrl: 'assets/profile_img/vin.jpeg',
          date: '7/22/24',
          message: 'Welcome to the town'),
      FirstPageContactsInfo(
          id: 003,
          firstName: 'Nicole',
          lastName: 'Kidman',
          imageUrl: 'assets/profile_img/nicole.jpg',
          date: '7/22/24',
          message: 'Good to see you again.'),
      FirstPageContactsInfo(
          id: 004,
          firstName: 'Gal',
          lastName: 'Gadot',
          imageUrl: 'assets/profile_img/gal_gadot.jpg',
          date: '7/21/24',
          message: 'Hi, Call me asap!'),
      FirstPageContactsInfo(
          id: 005,
          firstName: 'Kareena',
          lastName: 'Kapoor',
          imageUrl: 'assets/profile_img/kareena.jpg',
          date: '7/21/24',
          message: 'Gol goppa :)'),
      FirstPageContactsInfo(
          id: 006,
          firstName: 'Charlize',
          lastName: 'Throne',
          imageUrl: 'assets/profile_img/charlize.jpg',
          date: '7/21/24',
          message: 'bring me some baklava'),
      FirstPageContactsInfo(
          id: 007,
          firstName: 'Gina',
          lastName: 'Carano',
          imageUrl: 'assets/profile_img/gina.jpg',
          date: '7/20/24',
          message: 'Come to see the fight'),
      FirstPageContactsInfo(
          id: 008,
          firstName: 'Tom',
          lastName: 'Criuse',
          imageUrl: 'assets/profile_img/tom.jpg',
          date: '7/20/24',
          message: 'Welcome to mission!! '),
      FirstPageContactsInfo(
          id: 009,
          firstName: 'Rebecca',
          lastName: 'Ferguson',
          imageUrl: 'assets/profile_img/rebecca.jpg',
          date: '7/20/24',
          message: 'sorry, i was asleep.'),
      FirstPageContactsInfo(
          id: 010,
          firstName: 'Lara',
          lastName: 'Fabian',
          imageUrl: 'assets/profile_img/lara.jpeg',
          date: '7/22/24',
          message: 'Let it kill you'),
    ];
  }

  static List<CallContactInfo> get callContactInfo {
    return [
      CallContactInfo(
          id: 001,
          firstName: 'Lara',
          lastName: 'Fabian',
          imageUrl: 'assets/profile_img/lara.jpeg',
          date: '7/26/24,',
          time: '09:09',
          callNumber: '(2)',
          typeCallIcon: Icons.videocam_outlined,
          inOrOutTypeIcon: Icons.north_east_sharp,
          callColor: floatingActionButtonColor,
          contactColor: Colors.white),
      CallContactInfo(
          id: 002,
          firstName: 'Vin',
          lastName: 'Deisel',
          imageUrl: 'assets/profile_img/vin.jpeg',
          date: '7/22/24,',
          time: '20:56',
          callNumber: '(10)',
          typeCallIcon: Icons.call,
          inOrOutTypeIcon: Icons.south_west_sharp,
          callColor: const Color(0xffDB5F78),
          contactColor: const Color(0xffDB5F78)),
      CallContactInfo(
          id: 003,
          firstName: 'Nicole',
          lastName: 'Kidman',
          imageUrl: 'assets/profile_img/nicole.jpg',
          date: '7/22/24,',
          time: '20:30',
          callNumber: '(2)',
          typeCallIcon: Icons.videocam_outlined,
          inOrOutTypeIcon: Icons.north_east_sharp,
          callColor: floatingActionButtonColor,
          contactColor: Colors.white),
      CallContactInfo(
          id: 004,
          firstName: 'Gal',
          lastName: 'Gadot',
          imageUrl: 'assets/profile_img/gal_gadot.jpg',
          date: '7/21/24,',
          time: '19:45',
          callNumber: '(3)',
          typeCallIcon: Icons.videocam_outlined,
          inOrOutTypeIcon: Icons.north_east_sharp,
          callColor: floatingActionButtonColor,
          contactColor: Colors.white),
      CallContactInfo(
          id: 005,
          firstName: 'Kareena',
          lastName: 'Kapoor',
          imageUrl: 'assets/profile_img/kareena.jpg',
          date: '7/21/24,',
          time: '19:23',
          callNumber: '',
          typeCallIcon: Icons.videocam_outlined,
          inOrOutTypeIcon: Icons.north_east_sharp,
          callColor: floatingActionButtonColor,
          contactColor: Colors.white),
      CallContactInfo(
          id: 006,
          firstName: 'Charlize',
          lastName: 'Throne',
          imageUrl: 'assets/profile_img/charlize.jpg',
          date: '7/21/24,',
          time: '19:13',
          callNumber: '',
          typeCallIcon: Icons.videocam_outlined,
          inOrOutTypeIcon: Icons.north_east_sharp,
          callColor: floatingActionButtonColor,
          contactColor: Colors.white),
      CallContactInfo(
          id: 007,
          firstName: 'Gina',
          lastName: 'Carano',
          imageUrl: 'assets/profile_img/gina.jpg',
          date: '7/20/24,',
          time: '18:18',
          callNumber: '',
          typeCallIcon: Icons.videocam_outlined,
          inOrOutTypeIcon: Icons.north_east_sharp,
          callColor: floatingActionButtonColor,
          contactColor: Colors.white),
      CallContactInfo(
          id: 008,
          firstName: 'Tom',
          lastName: 'Criuse',
          imageUrl: 'assets/profile_img/tom.jpg',
          date: '7/20/24,',
          time: '21:23',
          callNumber: '(7)',
          typeCallIcon: Icons.call,
          inOrOutTypeIcon: Icons.south_west_sharp,
          callColor: const Color(0xffDB5F78),
          contactColor: const Color(0xffDB5F78)),
      CallContactInfo(
          id: 009,
          firstName: 'Rebecca',
          lastName: 'Ferguson',
          imageUrl: 'assets/profile_img/rebecca.jpg',
          date: '7/20/24,',
          time: '23:23',
          callNumber: '(3)',
          typeCallIcon: Icons.videocam_outlined,
          inOrOutTypeIcon: Icons.north_east_sharp,
          callColor: floatingActionButtonColor,
          contactColor: Colors.white),
    ];
  }
}
