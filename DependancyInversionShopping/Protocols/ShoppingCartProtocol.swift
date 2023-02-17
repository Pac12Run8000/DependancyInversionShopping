//
//  ShoppingCartProtocol.swift
//  DependancyInversionShopping
//
//  Created by Michelle Grover on 2/17/23.
//

import Foundation

protocol ShoppingCartProtocol {
    func addItem(item: String)
    func removeItem(item: String)
    func getTotal() -> Double
}
