import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  //list des docteur
  List<Map> doctors = [
    {"nom": "Dr. Louis Pasteur", "num": "0549228129", "spec": "Cardiologue"},
    {"nom": "Dr. René Laennec", "num": "0549000019", "spec": "Dantiste"},
    {"nom": "Dr. Ambroise Paré", "num": "0559228128", "spec": "Généraliste"},
    {
      "nom": "Dr. Jean-Martin Charcot",
      "num": "0555555912",
      "spec": "Cadriologue"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            "assets/background.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, bottom: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Doctors',
                      style: TextStyle(
                          fontSize: 26,
                          color: Color(0xff024665),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'List of doctors and their\ninformations :',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff024665),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: doctors.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xff68DAB4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.18,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.035,
                                          backgroundImage: const AssetImage(
                                              'assets/avatar.png'),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              doctors[index]['nom'],
                                              style: const TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              doctors[index]['spec'],
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  color: const Color(0xff2B808F)
                                                      .withOpacity(0.8)),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Center(
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        child: Divider(
                                          thickness: 1,
                                          color: const Color(0xff2B808F)
                                              .withOpacity(0.6),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                            Icons.phone_callback_outlined,
                                            color: Colors.white),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          doctors[index]["num"],
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white
                                                  .withOpacity(0.8)),
                                        )
                                      ],
                                    )
                                  ]),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 7),
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: const Divider(
                                  thickness: 2,
                                  color: Color(0xff97D3EF),
                                ),
                              ),
                            ],
                          );
                        }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
