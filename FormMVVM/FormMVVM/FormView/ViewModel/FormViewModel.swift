//
//  FormViewModel.swift
//  FormMVVM
//
//  Created by Rafael Aviles Puebla on 30/11/21.
//

final class FormViewModel {
  var user = Box("")
  func register(user: User) {
    self.user.value = user.name
    let mainViewModel = MainScreenViewModel()
    mainViewModel.user = self.user
  }
}
