import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/newentityfeatures/commonrepo/assignment_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
import '../repo/createassignment_repository.dart';

part 'createassignment_item_event.dart';
part 'createassignment_item_state.dart';
part 'createassignment_item_bloc.dart';
