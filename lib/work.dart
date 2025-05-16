import 'package:flutter/material.dart';
import 'package:myapp/Util/colors.dart';
import 'package:myapp/user_profile_page.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<Work> {
  int selectedIndex = 1;
  void onItemsSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    if (index == 0) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const UserProfilePage()));
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

// for name email , date of birth and address
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ingeniero en \narkwer",
                          style: TextStyle(
                              fontSize: 45, height: 0.9, color: primaryColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Puesto",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "El que sea",
                          style: TextStyle(
                              fontSize: 20, height: 0.9, color: primaryColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Integracion",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "jul 17, 0069 a.C.",
                          style: TextStyle(
                              fontSize: 20, height: 0.9, color: primaryColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Experiencia",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "1900 años",
                          style: TextStyle(
                              fontSize: 20, height: 0.9, color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  // For profile image
                  Container(
                    width: 290,
                    height: 290,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: NetworkImage("https://raw.githubusercontent.com/Kevin-Carbajal-1052/Demons-imagen-appflutter/refs/heads/main/profile1.jpg"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                  ),
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
          // for work object
          projects("3","Projectos \n completados","99,9%","De\n exito"),
           projects("6","Equipos","10","Clientes\nReportados")
        ],
      ),
    );
  }

  Padding projects(number, name, number1, name1) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 17, right: 17),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Positioned(
                      top: 15,
                      left: 50,
                      child: Text(
                        number,
                        style: TextStyle(fontSize: 65, color: primaryColor),
                      )),
                  Positioned(
                      top: 95,
                      left: 50,
                      child: Text(
                        name,
                        style: TextStyle(fontSize: 28, color: Colors.black38),
                      ))
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 17,
          ),
          Expanded(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Positioned(
                      top: 15,
                      left: 50,
                      child: Text(
                        number1,
                        style: TextStyle(fontSize: 65, color: primaryColor),
                      )),
                  Positioned(
                      top: 95,
                      left: 50,
                      child: Text(
                        name1,
                        style: TextStyle(fontSize: 28, color: Colors.black38),
                      ))
                ],
              ),
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