import 'package:axon_ivy/core/abstracts/base_page.dart';
import 'package:axon_ivy/features/profile/domain/entities/qr/qr_model.dart';
import 'package:axon_ivy/features/profile/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:axon_ivy/generated/assets.gen.dart';
import 'package:axon_ivy/shared/storage/secure_storage.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
import 'package:axon_ivy/shared/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/di/di_setup.dart';

class LoginPage extends BasePage {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BasePageState<LoginPage> {
  final _usernameTextController = TextEditingController();
  final _usernameFocusNode = FocusNode();

  final _passwordTextController = TextEditingController();
  final _passwordFocusNode = FocusNode();

  final _urlTextController = TextEditingController();
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
        leadingWidth: 100.w,
        centerTitle: true,
        scrolledUnderElevation: 15,
        elevation: 0,
        shadowColor: Colors.black.withValues(alpha: 0.3),
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        title: Text(
          "profile.signIn".tr(),
          style: GoogleFonts.inter(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: const BackButtonWidget(),
      ),
      body: BlocProvider(
        create: (context) => _loginBloc,
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.status == LoginStatus.success) {
              context.pop(true);
            } else if (state.status == LoginStatus.error) {
              showMessageDialog(
                  title: "profile.error".tr(),
                  message: state.error?.message ?? "notFoundError".tr());
            }
          },
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0).r,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "profile.serverLink".tr(),
                    style: GoogleFonts.inter(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  10.verticalSpace,
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
                          prefix: AppAssets.icons.iconUrl.svg(
                            colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.onSurface,
                                BlendMode.srcIn),
                          ),
                          hintText: "profile.url".tr(),
                          focusNode: _urlFocusNode,
                          onChanged: (value) => context
                              .read<LoginBloc>()
                              .add(LoginEvent.urlOnChanged(value)),
                        );
                      }),
                  20.verticalSpace,
                  Text(
                    "profile.userType".tr(),
                    style: GoogleFonts.inter(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  10.verticalSpace,
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
                          prefix: AppAssets.icons.iconUsername.svg(
                            colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.onSurface,
                                BlendMode.srcIn),
                          ),
                          hintText: "profile.username".tr(),
                          focusNode: _usernameFocusNode,
                          onChanged: (value) => context
                              .read<LoginBloc>()
                              .add(LoginEvent.usernameOnChanged(value)),
                        );
                      }),
                  20.verticalSpace,
                  Text(
                    "profile.password".tr(),
                    style: GoogleFonts.inter(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  10.verticalSpace,
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
                          prefix: AppAssets.icons.iconLock.svg(
                            colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.onSurface,
                                BlendMode.srcIn),
                          ),
                          onChanged: (value) => context
                              .read<LoginBloc>()
                              .add(LoginEvent.passwordOnChanged(value)),
                        );
                      }),
                  20.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () async {
                            FocusScope.of(context).unfocus();
                            SharedPrefs.setBaseUrl(_urlTextController.text);
                            await SecureStorage.saveCredentials(
                              username: _usernameTextController.text,
                              password: _passwordTextController.text,
                            );
                            _loginBloc.add(LoginEvent.submitLogin(
                                _urlTextController.text,
                                _passwordTextController.text,
                                _usernameTextController.text));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10).r,
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              borderRadius: BorderRadius.all(
                                const Radius.circular(8).r,
                              ),
                            ),
                            child: Text(
                              "profile.signIn".tr(),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).colorScheme.primary),
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
                        child: Icon(Icons.qr_code_2_outlined, size: 45.r),
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
