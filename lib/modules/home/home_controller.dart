import 'package:flutter/widgets.dart';
import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/repositories/home_repository_mock.dart';

class HomeController {
  late HomeRepository repository;

  HomeState state = HomeStateEmpty();

  HomeController() {
    repository = HomeRepositoryMock();
  }

  getEvents(VoidCallback onUpdate) async {
    state = HomeStateLoading();
    final response = await repository.getEvents();
    state = HomeStateSuccess(events: response);
    onUpdate();
  }
}
