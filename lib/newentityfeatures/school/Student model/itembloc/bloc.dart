import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/common/model/place.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
import '../repo/studentbasicform_repository.dart';
import 'package:complex/newentityfeatures/Models/user_registration_model.dart';

part 'studentbasicform_item_event.dart';
part 'studentbasicform_item_state.dart';
part 'studentbasicform_item_bloc.dart';
