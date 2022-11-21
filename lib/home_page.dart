// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:codewars2/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:codewars2/l10n/l10n.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _searchController = TextEditingController(text: "Search Country/city");

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    SizeConfig.init(context);
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: ListView(
        children: [
          Container(
            height: getProportionateScreenHeight(300),
            color: theme.primaryColor,
            child: Align(
              child: Text(l10n.energyConsumption, textAlign: TextAlign.center,
                  style: theme.textTheme.headline1?.copyWith(color: theme.cardColor),
              ),
            ),
          ),
          Gap(getProportionateScreenHeight(20)),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(40),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50,),
                            borderSide: BorderSide(color: theme.primaryColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: theme.primaryColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: theme.primaryColor),
                          ),
                          prefixIcon: const Icon(CupertinoIcons.search)
                        ),
                      ),
                      Gap(getProportionateScreenHeight(10)),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: true,
                                  onChanged: (v) {},
                                ),
                                const Gap(10),
                                Text('Togo')
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
