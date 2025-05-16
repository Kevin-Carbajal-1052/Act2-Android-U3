import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/Util/colors.dart';
import 'package:myapp/work.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  int selectedIndex = 0;
  void onItemsSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    // now we make when we select work go to the next screen
    if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Work()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 186, 133),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 17, right: 17),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  // For profile imagge
                  Container(
                    width: 290,
                    height: 290,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: NetworkImage("https://raw.githubusercontent.com/Kevin-Carbajal-1052/Demons-imagen-appflutter/refs/heads/main/profile1.jpg"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                  ),
// for name email , date of birth and address
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Adriel \nCastañeda",
                          style: TextStyle(
                              fontSize: 45, height: 0.9, color: primaryColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Email",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "email.n@hotmail.com",
                          style: TextStyle(
                              fontSize: 20, height: 0.9, color: primaryColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Fecha de cumpleaños",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "December,18, 2007",
                          style: TextStyle(
                              fontSize: 20, height: 0.9, color: primaryColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Direccion",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "Cd. Juarez, Chihuahua",
                          style: TextStyle(
                              fontSize: 20, height: 0.9, color: primaryColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 40,
            width: 280,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                builderItem(0, "Perfil"),
                builderItem(1, "Trabajo"),
                builderItem(2, "Actividad"),
              ],
            ),
          ),
          // For bio
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 17, right: 17, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 18, right: 18, left: 18),
                    child: Text(
                      "BIO",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: primaryColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 2, right: 18, left: 18, bottom: 20),
                    child: Text(
                      "Jugador experto de ARK, manco en Rocket League y una aplanadora rodante en Minecraft. Hosexual pero con novia para guardar apariencias y saco de boxeo de Kevin Carbajal, N y E.",
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 18, right: 18, left: 18,bottom: 10),
                    child: Text(
                      "En la WEB",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: primaryColor),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 2, right: 18, left: 18, bottom: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: primaryColor,
                            child: const Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 15,),
                           CircleAvatar(
                            backgroundColor: primaryColor,
                            child: const Icon(
                              FontAwesomeIcons.instagram,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundColor: primaryColor,
                            child: const Icon(
                              FontAwesomeIcons.linkedinIn,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundColor: primaryColor,
                            child: const Icon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                            ),
                          ),
                          
                        ],
                      )),
                ],
              ),
            ),
          ),
          // for websit and phone
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 17, right: 17),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 18, right: 25, left: 18),
                    child: Row(children: [
                        Text(
                          "Sitio WEB",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        Spacer(),
                         Text(
                          "www.portfolio.adriel.com",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, 
                              fontSize: 18,
                              color: primaryColor),
                        ),
                      ],),

                  ),
                     Padding(
                    padding:
                        const EdgeInsets.only(top: 18, right: 25, left: 18),
                    child: Row(
                      children: [
                        Text(
                          "Telefono",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        Spacer(),
                        Text(
                          "656-530-8689",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                ],),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector builderItem(int index, String label) {
    bool isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () {
        onItemsSelected(index);
      },
      child: Container(
        width: 85,
        height: 30,
        decoration: BoxDecoration(
            color: isSelected ? Colors.blue : Colors.transparent,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
                color: isSelected ? Colors.white : Colors.black, fontSize: 20),
          ),
        ),
      ),
    );
  }
}