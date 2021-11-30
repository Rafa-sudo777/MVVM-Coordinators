//
//  FormViewController.swift
//  FormMVVM
//
//  Created by Rafael Aviles Puebla on 30/11/21.
//

import UIKit

final class FormViewController: UIViewController {
  @IBOutlet private weak var usertTxt: UITextField!
  private let viewModel = FormViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  @IBAction func doneButton(_ sender: Any) {
    if let name = usertTxt.text {
      let newUser = User(name: name)
      viewModel.register(user: newUser)
      dismiss(animated: true)
    }
  }
}
