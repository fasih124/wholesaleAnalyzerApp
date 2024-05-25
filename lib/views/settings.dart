import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Assignment 1')),
          backgroundColor: Colors.teal,
          titleTextStyle: const TextStyle(fontSize: 30, color: Colors.black),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.teal,
                        width: 1,
                      )),
                  child: const CircleAvatar(
                    backgroundColor: Colors.teal,
                    maxRadius: 40,
                    backgroundImage: NetworkImage(
                        'https://as1.ftcdn.net/v2/jpg/05/90/59/88/1000_F_590598870_TOcGd4cUZzPoEMlxSc7XYwcupHOE0vLM.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    // CardWidget(
                    //   imgurl:
                    //   "https://images.squarespace-cdn.com/content/v1/5e6fde17718c5e6a0e17a3c5/1586289024778-T1N2TLIA9HWZML65T37T/SozoLogoFullColor.png",
                    //   cname: "Sozo Travalers",
                    //   description: "Kumrat Valley",
                    //   price: "Rs.14,550/Person",
                    //   duration: "02days/03Nights",
                    //   departure: "Departure:14 August",
                    //   clr: Colors.green.shade100,
                    // ),
                    // const CardWidget(
                    //   imgurl:
                    //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:A"
                    //       "Nd9GcQhieYOuIDmsp-SS0aE5GPkS3D_QWnfoBpNGWLa9J4cKA&s",
                    //   cname: "Serena Hotel",
                    //   description: "6 Star Room",
                    //   price: "Muree,Punjab",
                    //   duration: "4.5(8.7)",
                    //   departure: "Read Views",
                    //   clr: Colors.white,
                    // ),
                    // CardWidget(
                    //   imgurl:
                    //   "https://img.freepik.com/free-photo/abstract-dark-background-with-flowing-colouful-waves_1048-13124.jpg",
                    //   cname: "Luxury Bus",
                    //   description: "Daewoo Express",
                    //   price: "Rs.450/Person",
                    //   duration: "FSD-Kumrat",
                    //   departure: "Departure:14 August",
                    //   clr: Colors.grey.shade300,
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      );

  }
}
