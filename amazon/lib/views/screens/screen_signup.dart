import 'package:amazon/bloc/user_bloc.dart';
import 'package:amazon/bloc/user_state.dart';
import 'package:amazon/views/components/card_message.dart';
import 'package:amazon/views/screens/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenSignup extends StatefulWidget {
  const ScreenSignup({Key? key}) : super(key: key);

  @override
  State<ScreenSignup> createState() => _ScreenSignupState();
}

class _ScreenSignupState extends State<ScreenSignup> {
  final _formKey = GlobalKey<FormState>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final isSignedIn = context.read<UserBloc>().state.currentUser.isSignedIn;
    if (isSignedIn) {
      Navigator.of(context).pushReplacementNamed(ScreenHome.route);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state.hasError) return _buildMsg(state.error);
        if (state.isLoading) return _buildLoading();
        final appBar = AppBar(title: const Text('Signup User'));

        // User Name:
        final userName = TextFormField(
          validator: context.read<UserBloc>().validateName,
          onSaved: context.read<UserBloc>().setName,
          decoration: const InputDecoration(labelText: 'User Name'),
        );

        // Password:
        final password = TextFormField(
          validator: context.read<UserBloc>().validatePass,
          onSaved: context.read<UserBloc>().setPassword,
          obscureText: true,
          decoration: const InputDecoration(labelText: 'Password'),
        );

        // Submit Form:
        final submit = TextButton(
          onPressed: _submitForm,
          child: const Text('Register'),
        );

        final form = Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(children: [userName, password, submit]),
        );
        return Scaffold(
          appBar: appBar,
          body: Center(child: form),
        );
      },
    );
  }

  CardMessage _buildMsg(String? error) {
    return CardMessage('Couldnot Sign in because $error');
  }

  Center _buildLoading() {
    return const Center(child: CircularProgressIndicator());
  }

  void _submitForm() {
    final validated = _formKey.currentState?.validate();
    if (validated == true) {
      _formKey.currentState?.save();
      _formKey.currentState?.reset();
      context.read<UserBloc>().signUp();
      Navigator.of(context).pushReplacementNamed(ScreenHome.route);
    }
  }
}
