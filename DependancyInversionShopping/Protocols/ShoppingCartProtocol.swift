//
//  ShoppingCartProtocol.swift
//  DependancyInversionShopping
//
//  Created by Michelle Grover on 2/17/23.
//

import Foundation

protocol ShoppingCartProtocol {
    var items: [String] { get set }
    func addItem(item: String)
    func removeItem(item: String)
    func getTotal() -> Double
}
