import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_static_data/dt_domains/_index.dart';
import 'package:intro_static_data/dt_domains/_models/_index.dart';
import 'package:intro_static_data/ui_screens/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.product_list.data.dart';
part 'b.product_list.ctrl.dart';
part 'c.product_list.view.dart';
part 'widgets/a.product_list.appbar.dart';
part 'widgets/b.product_list.fab.dart';
part 'widgets/c.product_list.charlie.dart';
part 'widgets/d.product_list.delta.dart';
part 'widgets/e.product_list.echo.dart';

ProductListData get _dt => Data.productList.st;
ProductListCtrl get _ct => Ctrl.productList;
ProductAddCtrl get _ctFromAdd => Ctrl.productAdd;
