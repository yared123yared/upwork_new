import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'ecommerce_state.dart';

class EcommerceCubit extends Cubit<EcommerceState> {
  EcommerceCubit() : super(LandingPageState());

  void viewLoadingPage() {
    emit(LoadingPageState());
  }
}
