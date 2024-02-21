import 'package:axon_ivy/core/generated/colors.gen.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/data/models/qr_model/qr_model.dart';
import 'package:axon_ivy/presentation/base_view/base_view.dart';
import 'package:axon_ivy/presentation/login/bloc/login_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/di/di_setup.dart';
import '../../util/widgets/app_text_field.dart';

class LoginView extends BasePageScreen {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends BasePageScreenState<LoginView> {
  final _usernameTextController = TextEditingController(text: 'Developer');
  final _usernameFocusNode = FocusNode();

  final _passwordTextController = TextEditingController();
  final _passwordFocusNode = FocusNode();

  final _urlTextController =
      TextEditingController(text: 'https://mobile-demo-server.ivy-cloud.com');
  final _urlFocusNode = FocusNode();

  dynamic model;

  late final LoginBloc _loginBloc;

  @override
  void initState() {
    super.initState();
    _loginBloc = getIt<LoginBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile.signIn".tr()),
        leading: BackButton(
          onPressed: () {
            context.pop(false);
          },
        ),
      ),
      body: BlocProvider(
        create: (context) => _loginBloc,
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.status == LoginStatus.success) {
              context.pop(true);
            } else if (state.status == LoginStatus.error) {
              showConfirmDialog(
                  title: "Error",
                  message: state.error?.message ?? "notFoundError".tr());
            }
          },
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            children: [
              Column(
                children: [
                  BlocBuilder<LoginBloc, LoginState>(
                      buildWhen: (previous, current) =>
                          previous.url != current.url ||
                          previous.invalidUrlMessage !=
                              current.invalidUrlMessage,
                      builder: (context, state) {
                        return AppTextField(
                          autofocus: true,
                          controller: _urlTextController,
                          validator: (_) => state.invalidUrlMessage,
                          autovalidateMode: AutovalidateMode.always,
                          prefix: const Icon(
                            Icons.web_outlined,
                            color: AppColors.argent,
                          ),
                          hintText: "profile.url".tr(),
                          focusNode: _urlFocusNode,
                          onChanged: (value) => context
                              .read<LoginBloc>()
                              .add(LoginEvent.urlOnChanged(value)),
                        );
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<LoginBloc, LoginState>(
                      buildWhen: (previous, current) =>
                          previous.username != current.username ||
                          previous.invalidUsernameMessage !=
                              current.invalidUsernameMessage,
                      builder: (context, state) {
                        return AppTextField(
                          controller: _usernameTextController,
                          autovalidateMode: AutovalidateMode.always,
                          validator: (_) => state.invalidUsernameMessage,
                          prefix: const Icon(
                            Icons.person_2_outlined,
                            color: AppColors.argent,
                          ),
                          hintText: "profile.username".tr(),
                          focusNode: _usernameFocusNode,
                          onChanged: (value) => context
                              .read<LoginBloc>()
                              .add(LoginEvent.usernameOnChanged(value)),
                        );
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<LoginBloc, LoginState>(
                      buildWhen: (previous, current) =>
                          previous.password != current.password ||
                          previous.invalidPasswordMessage !=
                              current.invalidPasswordMessage,
                      builder: (context, state) {
                        return AppTextField(
                          obscureText: true,
                          autovalidateMode: AutovalidateMode.always,
                          hintText: "profile.yourPassword".tr(),
                          controller: _passwordTextController,
                          validator: (_) => state.invalidPasswordMessage,
                          focusNode: _passwordFocusNode,
                          prefix: const Icon(
                            Icons.lock_outline,
                            color: AppColors.argent,
                          ),
                          onChanged: (value) => context
                              .read<LoginBloc>()
                              .add(LoginEvent.passwordOnChanged(value)),
                        );
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            SharedPrefs.setBaseUrl(_urlTextController.text);
                            SharedPrefs.setPassword(
                                _passwordTextController.text);
                            SharedPrefs.setUsername(
                                _usernameTextController.text);
                            _loginBloc.add(LoginEvent.submitLogin(
                                _urlTextController.text,
                                _passwordTextController.text,
                                _usernameTextController.text));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: const BoxDecoration(
                              color: AppColors.placebo,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Text(
                              "profile.signIn".tr(),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.tropicSea),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () async {
                          model = await context.push("/qr") as Set<QRModel>;

                          setState(() {
                            _usernameTextController.text = model.first.username;
                            _urlTextController.text = model.first.loginUrl;
                          });
                        },
                        child: const Icon(Icons.qr_code_2_outlined, size: 45),
                      ),
                    ],
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
