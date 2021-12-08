//
//  MainCoordinator.swift
//  FormMVVM
//
//  Created by Rafael Aviles Puebla on 07/12/21.
//

import UIKit.UINavigationController

final class MainCoordinator: Coordinator {
  var navigationController =  UINavigationController()
  
  func start() {
    let mainView = MainViewController()
    mainView.coordinator = self
    navigationController.pushViewController(mainView, animated: true)
  }
  
  func showForm() {
    let formView = FormViewController()
    formView.viewModel.user.value = "Rafa"
    navigationController.present(formView, animated: true)
  }
}
