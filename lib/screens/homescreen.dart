import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

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
          ]),
        ),
      ),
    );
  }
}
