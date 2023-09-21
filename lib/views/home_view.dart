import 'package:custom_text_form_field/models/text_form_model.dart';
import 'package:custom_text_form_field/bloc/global_bloc.dart';
import 'package:custom_text_form_field/bloc/global_state.dart';
import 'package:custom_text_form_field/common/app_colors.dart';
import 'package:custom_text_form_field/components/modal_add_new_textForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<TextFormModel> ok = [];
    bool visibleModal = false;

    return BlocBuilder<GlobalBloc, GlobalState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.blue,
            centerTitle: true,
            title: const Text("Custom Text Form \nField Generator",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: AppColors.white)),
          ),
          body: Stack(children: [
            Positioned(
                bottom: 1,
                right: 1,
                child: IconButton(
                    onPressed: () {
                      // setState(() {
                      //   // ok.add(TextFormModel(name: "name", rollno: 0));
                      //   visibleModal = true;
                      // });
                    },
                    icon: const Icon(Icons.add))),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: ok.map((e) {
                      return (Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 5),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ));
                    }).toList(),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: visibleModal,
              child: Positioned(
                  child: Center(
                      child: visibleModal
                          ? const ModalNewTextFormField()
                          : const SizedBox())),
            )
          ]),
        );
      },
    );
  }
}
