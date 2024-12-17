import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> showYesNoDialog({required BuildContext context,
  required String title,
  required String content,
  required bool isRootNavigator,
  bool showYes = false,
  bool showNo = false,
  String? yesActionText,
  String? noActionText,
  bool barrierDismissible = false}) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.black.withOpacity(0.4),
          alignment: Alignment.center,
          width: double.maxFinite,
          height: double.maxFinite,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              color: Colors.white,
            ),
            width: 341,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(content,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    )),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 200,
                  child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          if (showNo)
                            TextButton(
                              onPressed: () {
                                // appRouter.maybePop(false);
                                Navigator.of(context).maybePop(false);
                              },
                              child: Text(
                                noActionText ?? '',
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          if (showYes)
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).maybePop(true);
                              },
                              child: Text(
                                yesActionText ?? '',
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            )
                        ],
                      )),
                )
              ],
            ),
          ),
        );
      });
}

Future showInfoTextDialog(
    {String? content, required BuildContext context}) async {
  showGeneralDialog(
      context: context,
      barrierColor: Colors.transparent,
      pageBuilder: (_, a1, a2) {
        return GestureDetector(
          onTap: () {
            Navigator.of(_).pop();
          },
          child: Material(
            color: Colors.grey.withOpacity(0.7),
            child: Align(
              child: SizedBox(
                width: 200,
                height: 100,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      content ?? '',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      });
}
