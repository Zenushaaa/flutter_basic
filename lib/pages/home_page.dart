import 'package:flutter/material.dart';

import 'package:flutter_basic/theme.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorPrimary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),
                Text(
                  'Profile Picture',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: texColortPrimary),
                ),
                const SizedBox(height: 50),
                Image.asset(
                  'assets/images/primary.png',
                  width: 140,
                ),
                const SizedBox(height: 16),
                Text(
                  'Anne Margaritha',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: texColortPrimary),
                ),
                const SizedBox(height: 4),
                Text(
                  'UX Designer',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: textColorSecondary),
                ),
                const SizedBox(height: 70),
                Wrap(
                  spacing: 38,
                  runSpacing: 40,
                  children: [
                    Image.asset(
                      'assets/images/item.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item_1.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item_2.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item_3.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item_4.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/item_5.png',
                      width: 80,
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        builder: (context) {
                          return SizedBox(
                            height: 290,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 50),
                              child: Column(
                                children: [
                                  Text(
                                    'Update Photo',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: texColortPrimary,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'You are only able to change \n the picture profile once',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: textColorSecondary,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 30),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: btnColorPrimary,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          )),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 16,
                                          horizontal: 75,
                                        ),
                                        child: Text(
                                          'Continue',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: btnColorSecondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 55,
                      ),
                      child: Text(
                        'Update Profile',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: texColortPrimary),
                      ),
                    )),
                const SizedBox(height: 76),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
