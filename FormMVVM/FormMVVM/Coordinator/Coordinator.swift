//
//  Coordinator.swift
//  FormMVVM
//
//  Created by Rafael Aviles Puebla on 07/12/21.
//

import UIKit.UINavigationController

protocol Coordinator  {
  var navigationController: UINavigationController { set get }
  func start()
}
