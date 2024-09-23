import 'package:flutter/material.dart';
import 'package:icon/icon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_getx/app/modules/home/views/login/forgot_password_view.dart';
import 'package:test_getx/common/color_extenstion.dart';
import 'package:test_getx/common_widget/round_button.dart';
import 'package:test_getx/common_widget/round_textfield.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isStay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: TColor.primary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text("longWrite",
                    style: GoogleFonts.lobster(
                        textStyle: TextStyle(
                      color: TColor.text1,
                      fontSize: 36,
                      fontWeight: FontWeight.w300,
                    ))),
              ),
              Text(
                "Username",
                style: TextStyle(
                  color: TColor.text1,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextField(
                controller: txtEmail,
                hintText: "Enter your username or email",
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Password",
                style: TextStyle(
                  color: TColor.text1,
                  fontSize: 18,
                ),
              ),
              RoundTextField(
                controller: txtPassword,
                hintText: "Enter your password",
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isStay = !isStay;
                      });
                    },
                    icon: Icon(
                      isStay ? Icons.check_box : Icons.check_box_outline_blank,
                      color: isStay
                          ? TColor.primary
                          : TColor.subTitle.withOpacity(0.3),
                    ),
                  ),
                  Text(
                    "Stay Logged In",
                    style: TextStyle(
                      color: TColor.subTitle.withOpacity(0.3),
                      fontSize: 15,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPasswordView()));
                    },
                    child: Text(
                      "Forgot Your Password?",
                      style: TextStyle(
                        color: TColor.subTitle.withOpacity(0.3),
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              RoundLineButton(
                title: "Log in",
                onPressed: () {},
              ),

              const SizedBox(height: 20), // เว้นระยะห่างระหว่างปุ่ม

              // ข้อความสำหรับแสดง "or continue with"
              Center(
                child: Text(
                  "or continue with",
                  style: TextStyle(
                    fontSize: 16,
                    color: TColor.subTitle.withOpacity(0.6),
                  ),
                ),
              ),

              const SizedBox(height: 20), // เว้นระยะห่างระหว่างข้อความและปุ่ม

              // ปุ่ม Facebook และ Google
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ปุ่ม Facebook
                  ElevatedButton.icon(
                    onPressed: () {
                      // Action สำหรับการเข้าสู่ระบบด้วย Facebook
                    },
                    icon: Icon(
                      Icons.facebook,
                      color: const Color.fromARGB(255, 40, 19, 133),
                    ),
                    label: Text("Facebook"),
                    style: ElevatedButton.styleFrom(
                      iconColor: const Color.fromARGB(255, 53, 33, 151),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                  ),
                  const SizedBox(width: 10), // เว้นระยะห่างระหว่างปุ่ม

                  // ปุ่ม Google

                  ElevatedButton.icon(
                    onPressed: () {
                      // Action สำหรับการเข้าสู่ระบบด้วย Facebook
                    },
                    icon: Icon(
                      Icons.mail,
                      color: const Color.fromARGB(255, 173, 46, 46),
                    ),
                    label: Text("Google"),
                    style: ElevatedButton.styleFrom(
                      iconColor: Color.fromARGB(255, 001, 46, 46),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
