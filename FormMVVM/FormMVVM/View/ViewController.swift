//
//  ViewController.swift
//  FormMVVM
//
//  Created by Rafael Aviles Puebla on 30/11/21.
//

import UIKit

final class ViewController: UIViewController {

  @IBOutlet private weak var userLbl: UILabel!
  private let viewModel = MainScreenViewModel()
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
    let formView = FormViewController()
    present(formView, animated: true)
  }
}
