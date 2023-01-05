import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugas_akhir_flutter_chlorine/main.dart';
import 'package:timelines/timelines.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  List<String> listPortofolio = [
    "Git",
    "Github",
    "Bootstrap",
    "PHP",
    "Laravel",
    "Python",
    "Flutter",
  ];
  List<String> listEducation = [
    "POLTEK SSN",
    "SMK Wikrama Bogor",
    "SMPN 1 Cisarua",
    "SDN 1 Cisarua",
  ];

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 259,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 154,
                color: Colors.blue,
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, top: 40),
                  child: Text(
                    "My Profile",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                bottom: 24,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(70),
                      ),
                      child: SizedBox(
                        width: 140,
                        height: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image.asset(
                            "assets/dafa.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 25,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dafa Mahandika",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),  
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Text(
                            "Junior Mobile Developer",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              TabBar(
                controller: tabController,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.document_scanner,
                      color: Colors.grey,
                    ),
                    child: Text(
                      "Skills",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person_rounded,
                      color: Colors.grey,
                    ),
                    child: Text(
                      "About Me",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.cast_for_education,
                      color: Colors.grey,
                    ),
                    child: Text(
                      "Education",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ListView(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(16.0),
                      children: [
                        Timeline.tileBuilder(
                          shrinkWrap: true,
                          builder: TimelineTileBuilder.fromStyle(
                            contentsAlign: ContentsAlign.alternating,
                            contentsBuilder: (context, index) {
                              var item = listPortofolio[index];
                              return Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(item));
                            },
                            itemCount: listPortofolio.length,
                          ),
                        ),
                      ],
                    ),
                    ListView(
                      padding: const EdgeInsets.all(16),
                      children: [
                        Text(
                          "Nama Lengkap",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.person),
                            Text(
                              "Dafa Mahandika",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Alamat",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.place),
                            Text(
                              "Bogor, Jawa Barat",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Tanggal Lahir",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.date_range),
                            Text(
                              "Bogor, 2 Maret 2006",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "No Telp",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.phone),
                            Text(
                              "+6285885497322",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.email),
                            Text(
                              "dafamahandika@gmail.com",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ListView(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(16),
                      children: [
                        Timeline.tileBuilder(
                          shrinkWrap: true,
                          builder: TimelineTileBuilder.fromStyle(
                            contentsAlign: ContentsAlign.alternating,
                            contentsBuilder: (context, index) {
                              var item = listEducation[index];
                              return Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(item));
                            },
                            itemCount: listEducation.length,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
