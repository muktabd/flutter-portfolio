


//* ============== |> onWillPop when exit <| ============== */
import 'dart:io';
import 'package:flutter/material.dart';

import '../styles/text_styles.dart';

Future<bool> onWillPopExit(BuildContext context, key) async {
  return (await showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            // insetPadding: EdgeInsets.zero,
            elevation: 0,
            title: const Center(
              child: Text("Exit !!",
                
              ),
            ),
            content: const Text("Want to exit",
              textAlign: TextAlign.center,
            ),
            actions: [
              Column(
                children: [
                  const Divider(
                    height: 1.0,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("No"),
                        ),
                        const VerticalDivider(
                          width: 1.0,
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                        TextButton(
                          onPressed: () {
                            exit(0);
                          },
                          child: const Text(
                           "Yes",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      )) ??
      false;
}

//------> 

//* ============== |> onWillPop when logout <| ============== */
Future<bool> onWillPopLogout(BuildContext context) async {
  return (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              elevation: 0,
              title: Center(
                child: Text("log_out",
                  style: TextStyles.normalTextStyle(),
                ),
              ),
              content: const Text("want_to_logout",
                textAlign: TextAlign.center,
              ),
              actions: [
                Column(
                  children: [
                    const Divider(
                      height: 1.0,
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("cancel"),
                          ),
                          const VerticalDivider(
                            width: 1.0,
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                          TextButton(
                            onPressed: () async {
                         
                         
                            },
                            child: const Text("log_out",                      
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
        },
      )) ??
      true;
} 