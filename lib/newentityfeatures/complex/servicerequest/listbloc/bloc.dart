import 'dart:async';

import 'package:bloc/bloc.dart';
import '../repo/servicerequest_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import '../model/service_request_model.dart';
import 'package:complex/newentityfeatures/Models/service_request_model.dart';
//{entrybloc}
part 'servicerequest_list_event.dart';
part 'servicerequest_list_state.dart';
part 'servicerequest_list_bloc.dart';