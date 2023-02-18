//
//  Checkout.swift
//  DependancyInversionShopping
//
//  Created by Michelle Grover on 2/17/23.
//

import Foundation

class Checkout: ObservableObject, CheckoutProtocol {
    let cart: ShoppingCartProtocol
    
    init(cart: ShoppingCartProtocol) {
        self.cart = cart
    }
    
    func processOrder() {
        let items = cart.items
        let total = cart.getTotal()
        
        print("Order processed for \(items.count) items for a total of \(total)")
    }
}


