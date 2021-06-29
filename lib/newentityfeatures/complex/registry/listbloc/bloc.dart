import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:complex/newentityfeatures/Models/registry_model.dart';


import '../repo/registry_repository.dart';

//{entrybloc}
part 'registry_list_event.dart';
part 'registry_list_state.dart';
part 'registry_list_bloc.dart';