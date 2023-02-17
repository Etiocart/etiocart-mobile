import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import 'Security/applock_passcode.dart';
import 'theme_Provider/theme_provider.dart';

class Setting_page extends StatefulWidget {
  const Setting_page({super.key});

  @override
  State<Setting_page> createState() => _Setting_pageState();
}

bool value = false;

class _Setting_pageState extends State<Setting_page> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text(
          "Setting",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: ((() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const appLock()));
                    })),
                    child: Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Theme.of(context).backgroundColor,
                                ),
                                child: Icon(
                                  MdiIcons.lock,
                                  color: Theme.of(context).iconTheme.color,
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "App lock",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Theme.of(context).primaryColor),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // height: 50,
                    width: double.infinity,
                    // color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            themeChange.darkTheme = value;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Theme.of(context).backgroundColor),
                                child: Icon(
                                  MdiIcons.lock,
                                  color: Theme.of(context).iconTheme.color,
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Night Mode",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Theme.of(context).primaryColor),
                            ),
                            Spacer(),
                            Switch(
                                value: themeChange.darkTheme,
                                onChanged: (value) {
                                  setState(() {
                                    themeChange.darkTheme = value;
                                  });
                                })

                            // SwitchListTile(value: value, onChanged: null)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
