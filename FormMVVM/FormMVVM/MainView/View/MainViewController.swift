//
//  MainViewController.swift
//  FormMVVM
//
//  Created by Rafael Aviles Puebla on 08/12/21.
//

import UIKit

final class MainViewController: UIViewController {
  
  @IBOutlet private weak var userLbl: UILabel!
  var viewModel = MainScreenViewModel()
  var coordinator: MainCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setUpData()
  }
  
  private func setUpData() {
    viewModel.user.bind { [weak self] userName in
      self?.userLbl.text = userName
    }
  }
  
  @IBAction func toFormView(_ sender: Any) {
    coordinator?.showForm()
  }
}
