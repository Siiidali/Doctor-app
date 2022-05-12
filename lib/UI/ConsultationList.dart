import 'package:flutter/material.dart';

class ConsultaionList extends StatefulWidget {
  const ConsultaionList({Key? key}) : super(key: key);

  @override
  State<ConsultaionList> createState() => _ConsultaionListState();
}

class _ConsultaionListState extends State<ConsultaionList> {
  List<Map> consultations = [
    {"nom": "Consultation N°1", "date": "28/06/2022", "doctor": "Dr. Oumouchi"},
    {"nom": "Consultation N°2", "date": "12/07/2022", "doctor": "Dr. Si-saber"},
    {"nom": "Consultation N°3", "date": "2/09/2022", "doctor": "Dr. Hamidi"},
    {"nom": "Consultation N°4", "date": "25/12/2022", "doctor": "Dr. Haaji"}
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
                      'Consultations',
                      style: TextStyle(
                          fontSize: 26,
                          color: Color(0xff024665),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'List of consultations and their\ninformations :',
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
                        itemCount: consultations.length,
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
                                    MediaQuery.of(context).size.height * 0.14,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(children: [
                                    Text(
                                      consultations[index]['nom'],
                                      style: const TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
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
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                                Icons.calendar_month_outlined,
                                                color: Colors.white),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              consultations[index]["date"],
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white
                                                      .withOpacity(0.8)),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                                Icons.local_hospital_outlined,
                                                color: Colors.white),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              consultations[index]["doctor"],
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white
                                                      .withOpacity(0.8)),
                                            ),
                                          ],
                                        ),
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
