import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum SkillType { photoshop, adobexd, illustotur, aftereffect, lightroom }
SkillType selectSkill = SkillType.photoshop;

class _HomeScreenState extends State<HomeScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    Color color = isSelected ? Colors.white10 : Colors.transparent;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("shahram babaei"),
          actions: [
            IconButton(
                constraints: const BoxConstraints(maxWidth: 30),
                splashRadius: 20,
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                icon: const Icon(Icons.message)),
            const SizedBox(
              width: 10,
            ),
            IconButton(
                padding: const EdgeInsets.all(0),
                splashRadius: 20,
                onPressed: () {},
                icon: const Icon(Icons.more_vert_sharp)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 15),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      "assets/images/profile_image.png",
                      width: 70,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "softWareEngneer",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Product & Print Designer",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(fontSize: 14)),
                        const SizedBox(
                          height: 3,
                        ),
                        Wrap(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 12,
                              color: Theme.of(context).textTheme.caption!.color,
                            ),
                            Text(
                              "paris,france",
                              style: Theme.of(context).textTheme.caption,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Center(
                    child: Icon(
                      Icons.favorite_outline_sharp,
                      color: Colors.pink,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 25, 15, 15),
              child: Text(
                  "Enthusiastic young computer Geek, Freelance Designer in love of independence, I have alot of experience in graphical projects,and always give the best of myself to bring you to success.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.white.withOpacity(.5))),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Skill"),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(Icons.arrow_drop_down_outlined)
                ],
              ),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                SkillItem(
                  imageAddress: "assets/images/app_icon_01.png",
                  titleImage: "Photoshop",
                  isActive: selectSkill == SkillType.photoshop,
                  onTap: () {
                    setState(() {
                      selectSkill = SkillType.photoshop;
                    });
                  },
                  shadowColor: Colors.blue.shade100,
                ),
                SkillItem(
                  imageAddress: "assets/images/app_icon_05.png",
                  titleImage: "Adobexd",
                  isActive: selectSkill == SkillType.adobexd,
                  onTap: () {
                    setState(() {
                      selectSkill = SkillType.adobexd;
                    });
                  },
                  shadowColor: Colors.pink.shade200,
                ),
                SkillItem(
                  imageAddress: "assets/images/app_icon_04.png",
                  titleImage: "Illustotur",
                  isActive: selectSkill == SkillType.illustotur,
                  onTap: () {
                    setState(() {
                      selectSkill = SkillType.illustotur;
                    });
                  },
                  shadowColor: Colors.orange.shade200,
                ),
                SkillItem(
                  imageAddress: "assets/images/app_icon_03.png",
                  titleImage: "Aftereffect",
                  isActive: selectSkill == SkillType.aftereffect,
                  onTap: () {
                    setState(() {
                      selectSkill = SkillType.aftereffect;
                    });
                  },
                  shadowColor: Colors.blue.shade200,
                ),
                SkillItem(
                  imageAddress: "assets/images/app_icon_02.png",
                  titleImage: "Lightroom",
                  isActive: selectSkill == SkillType.lightroom,
                  onTap: () {
                    setState(() {
                      selectSkill = SkillType.lightroom;
                    });
                  },
                  shadowColor: Colors.green.shade200,
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String imageAddress;
  final String titleImage;
  final bool isActive;
  final Function() onTap;
  final Color shadowColor;

  const SkillItem(
      {required this.imageAddress,
      required this.titleImage,
      required this.isActive,
      required this.onTap,
      required this.shadowColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Container(
        height: 110,
        width: 110,
        decoration: isActive
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white10)
            : null,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            decoration: isActive
                ? BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 15, color: shadowColor)],
                  )
                : null,
            child: Image.asset(
              imageAddress,
              width: 60,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(titleImage)
        ]),
      ),
    );
  }
}
