


import 'package:flutter/material.dart';
import 'package:tanagham/core/widgets/app_text_form_feild.dart';

class SearchForm extends StatelessWidget {
  const   SearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 10),
                  ),
                ],
                ),
                child: const AppTextFormFeild(
                  hintText: 'search',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                  ),
                  suffixIcon: Icon(
                    Icons.close,
                    size: 20,
                  ),
                ),
              )
           ;
  }
}