// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:oracle_digital_app/src/mogule/sign_in/page/logic/sign_in_cubit.dart';

// class SignInEleveted extends StatelessWidget {
//   const SignInEleveted({
//     super.key,
//     required this.formKey,
//     required this.email,
//     required this.phone,
//   });

//   final GlobalKey<FormState> formKey;
//   final String email;
//   final String phone;

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//         create: (context) => FieldStateCubit(),
//         child: BlocBuilder<FieldStateCubit, bool>(
//           // BlocConsumer<SignInCubit, SignInState>(
//           //   listener: (context, state) async {
//           //     if (state is SignInSuccess) {
//           //       await context.read<AuthCubit>();
//           //       //.save(state.auth.accessToken);
//           //     } else if (state is SignInError) {
//           //     //  AppSnackBar.instance.snack(context);
//           //    }
//           // },
//           builder: (context, state) {
//             if (state is SignInLoading) {
//               return const Center(child: CircularProgressIndicator());
//             } else {
//               return SizedBox(
//                 width: 250,
//                 height: 40,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     if (formKey.currentState!.validate()) {
//                       context.read<SignInCubit>().signIn(
//                             email: email,
//                             password: phone,
//                           );
//                     }
//                   },
//                   child: Text('Login'),
//                 ),
//               );
//             }
//           },
//         ));
//   }
// }
