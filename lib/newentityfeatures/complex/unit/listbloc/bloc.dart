import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/newentityfeatures/Models/common/common_models/common_model.dart';
import 'package:complex/newentityfeatures/commonrepo/complex_repository.dart';

import 'package:equatable/equatable.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import '../repo/unitmodel_repository.dart';
// import '../model/unit_model.dart';
import 'package:complex/newentityfeatures/Models/unit_model.dart';

part 'unitmodel_list_event.dart';
part 'unitmodel_list_state.dart';
part 'unitmodel_list_bloc.dart';
