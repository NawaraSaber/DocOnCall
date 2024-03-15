import 'package:doc_on_call/screens/auth/login.dart';
import 'package:doc_on_call/screens/auth/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:image_picker/image_picker.dart';

import '../../consts/my_validators.dart';
import '../../services/my_app_methods.dart';
import '../../widgets/app_name_text.dart';
import '../../widgets/auth/pick_image_widget.dart';
import '../../widgets/subtitle_text.dart';
import '../../widgets/title_text.dart';

//import '../../services/my_app_methods.dart';

class RegisterScreen extends StatefulWidget {
  static const routName = '/RegisterScreen';

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late final TextEditingController _nameController,
      _emailController,
      _phoneController,
      _passwordController,
      _confirmPasswordController;
  late final FocusNode _nameFoucsNode,
      _emailFoucsNode,
      _phoneFoucsNode,
      _passwordFoucsNode,
      _confirmPasswordFoucsNode;
  late final _formKey = GlobalKey<FormState>();
  bool obscureText = true;
  XFile? _pickedImage;
  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _nameFoucsNode = FocusNode();
    _emailFoucsNode = FocusNode();
    _phoneFoucsNode = FocusNode();
    _passwordFoucsNode = FocusNode();
    _confirmPasswordFoucsNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _nameFoucsNode.dispose();
    _emailFoucsNode.dispose();
    _phoneFoucsNode.dispose();
    _passwordFoucsNode.dispose();
    _confirmPasswordFoucsNode.dispose();
    super.dispose();
  }

  Future<void> _registerFct() async {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {}
  }

  Future<void> localImagePicker() async {
    final ImagePicker picker = ImagePicker();
    await MyAppMethods.imagePickerDialog(
      context: context,
      cameraFCT: () async {
        _pickedImage = await picker.pickImage(source: ImageSource.camera);
        setState(() {});
      },
      gallaryFCT: () async {
        _pickedImage = await picker.pickImage(source: ImageSource.gallery);
        setState(() {});
      },
      removeFCT: () {
        setState(() {
          _pickedImage = null;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 60.0,
                ),
                const AppNameTextWidgt(
                  fontSize: 30,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTextWidget(
                        lablel: "Welcome to DocOnCall",
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SubtitleTextWidget(
                          label:
                              "Sign up now to recive special offers from our app and update from our app"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                SizedBox(
                  height: size.width * 0.3,
                  width: size.width * 0.3,
                  child: PickImageWidget(
                    pickedImage: _pickedImage,
                    function: () async {
                      await localImagePicker();
                    },
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: _nameController,
                        focusNode: _nameFoucsNode,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          hintText: "Full name",
                          prefixIcon: Icon(
                            IconlyLight.addUser,
                          ),
                        ),
                        validator: (value) {
                          return MyValidators.displayNameValidator(value);
                        },
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).requestFocus(_emailFoucsNode);
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      TextFormField(
                        controller: _emailController,
                        focusNode: _emailFoucsNode,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: "Email address",
                          prefixIcon: Icon(
                            IconlyLight.message,
                          ),
                        ),
                        validator: (value) {
                          return MyValidators.emailValidator(value);
                        },
                        onFieldSubmitted: (value) {
                          FocusScope.of(context)
                              .requestFocus(_passwordFoucsNode);
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      TextFormField(
                        controller: _phoneController,
                        focusNode: _phoneFoucsNode,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          hintText: "Phone",
                          prefixIcon: Icon(
                            IconlyLight.call,
                          ),
                        ),
                        validator: (value) {
                          return MyValidators.emailValidator(value);
                        },
                        onFieldSubmitted: (value) {
                          FocusScope.of(context)
                              .requestFocus(_passwordFoucsNode);
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        focusNode: _passwordFoucsNode,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: obscureText,
                        decoration: InputDecoration(
                          hintText: "*********",
                          prefixIcon: const Icon(
                            IconlyLight.lock,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            icon: Icon(
                              obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                        validator: (value) {
                          return MyValidators.passwordValidator(value);
                        },
                        onFieldSubmitted: (value) {
                          FocusScope.of(context)
                              .requestFocus(_confirmPasswordFoucsNode);
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      TextFormField(
                        controller: _confirmPasswordController,
                        focusNode: _confirmPasswordFoucsNode,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: obscureText,
                        decoration: InputDecoration(
                          hintText: "*********",
                          prefixIcon: const Icon(
                            IconlyLight.lock,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            icon: Icon(
                              obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                        validator: (value) {
                          return MyValidators.repeatPasswordValidator(
                              value: value, Password: _passwordController.text);
                        },
                        onFieldSubmitted: (value) {
                          _registerFct();
                        },
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
                          ),
                          icon: const Icon(IconlyLight.addUser),
                          label: const Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () async {
                            _registerFct;
                            Navigator.pushNamed(context, OTPScreen.routName);
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SubtitleTextWidget(
                            label: "Already have an account?",
                          ),
                          TextButton(
                            child: const SubtitleTextWidget(
                              label: "Login",
                              textDecoration: TextDecoration.underline,
                              fontStyle: FontStyle.italic,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, LoginScreen.routName);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
