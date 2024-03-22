import 'package:doctor_app_ui_tutorial/screens/home/widgets/item_category.dart';
import 'package:doctor_app_ui_tutorial/screens/home/widgets/item_doctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffccf8d6),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, right: 5),
          //child: SvgPicture.asset('assets/svg/menu.svg'),
          child: Image.network(
              "https://raw.githubusercontent.com/nava128/Img_IOS/main/Unidad_II_FlutLab_Android/icon-menu-png-4.jpg"),
        ),
        scrolledUnderElevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.JPG'),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const SizedBox(height: 30),
          Text(
            'Encuentra tu Doctor',
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Stack(
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  margin: const EdgeInsets.symmetric(vertical: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(.05)),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Buscar doctor',
                      hintStyle: TextStyle(fontWeight: FontWeight.w300),
                      border: InputBorder.none,
                    ),
                  )),
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: Container(
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Theme.of(context).colorScheme.primary),
                  child: const Icon(CupertinoIcons.search, color: Colors.white),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Categorias',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ItemCategory(
                    title: 'Esp. Cardiologia',
                    icon: Icons.heart_broken,
                    color: Colors.indigo),
                ItemCategory(
                    title: 'Esp. Dentista',
                    icon: Icons.visibility_outlined,
                    color: Colors.teal),
                ItemCategory(
                    title: 'Esp. Dermatologia',
                    icon: Icons.back_hand_rounded,
                    color: Colors.brown),
              ],
            ),
          ),
          const SizedBox(height: 15),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Mejores Doctores',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Column(
            children: [
              ItemDoctor(
                  title: 'Dr. Shahid Hussain',
                  subtitle: 'Cardiologo - IMSS',
                  image: 'assets/images/doctor1.png',
                  color: Colors.indigo),
              ItemDoctor(
                  title: 'Dr. Sidra Batool',
                  subtitle: 'Ginecologo - Hospital General',
                  image: 'assets/images/doctor2.png',
                  color: Colors.deepOrange),
              ItemDoctor(
                  title: 'Dr. Sana Ullah',
                  subtitle: 'Pediatra - Cruz Roja',
                  image: 'assets/images/doctor3.png',
                  color: Colors.brown),
            ],
          )
        ],
      ),
    );
  }
}
