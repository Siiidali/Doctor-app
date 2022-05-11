import 'package:flutter/material.dart';

class PharmacientList extends StatefulWidget {
  const PharmacientList({Key? key}) : super(key: key);

  @override
  State<PharmacientList> createState() => _PharmacientListState();
}

class _PharmacientListState extends State<PharmacientList> {
  //list des pharmacies
  List<Map> pharmacies = [
    {"nom": "Pharmacy El-YAsmine", "adr": "Rue rabah Takjourt ,Alger"},
    {"nom": "Pharmacy El-YAsmine", "adr": "Rue rabah Takjourt ,Alger"},
    {"nom": "Pharmacy El-YAsmine", "adr": "Rue rabah Takjourt ,Alger"},
    {"nom": "Pharmacy El-YAsmine", "adr": "Rue rabah Takjourt ,Alger"},
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
                      'Pharmacies',
                      style: TextStyle(
                          fontSize: 26,
                          color: Color(0xff024665),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'List of pharmacies and their\ninformations :',
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
                        itemCount: pharmacies.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xff0275A9),
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
                                        Text(
                                          pharmacies[index]['nom'],
                                          style: const TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
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
                                          color: const Color(0xffD8D8D8)
                                              .withOpacity(0.6),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.location_city,
                                            color: Colors.white),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          pharmacies[index]["adr"],
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
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
