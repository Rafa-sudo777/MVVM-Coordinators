//
//  FormViewModel.swift
//  FormMVVM
//
//  Created by Rafael Aviles Puebla on 30/11/21.
//

final class FormViewModel {
  var user = Box("")
  func register(user: User) {
    let mainView = MainViewController()
    mainView.viewModel.user.value = user.name
  }
}
