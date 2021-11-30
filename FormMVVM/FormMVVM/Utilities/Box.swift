//
//  Box.swift
//  FormMVVM
//
//  Created by Rafael Aviles Puebla on 30/11/21.
//

final class Box<T> {
  private var lister: ((T?) -> Void)?
  var value: T? {
    didSet {
      // llamalo con el ultimo valor
      lister?(value)
    }
  }
  init(_ value: T?) {
    self.value = value
  }
  func bind(_ lister: @escaping (T?) -> Void) {
    // guarda el valor del listener en el prametro
    self.lister = lister
    // se le manda el ultimo valor al closure 
    lister(value)
  }
}
