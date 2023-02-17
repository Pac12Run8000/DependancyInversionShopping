//
//  Checkout.swift
//  DependancyInversionShopping
//
//  Created by Michelle Grover on 2/17/23.
//

import Foundation

class Checkout:CheckoutProtocol {
    private let cart: ShoppingCartProtocol

    init(cart: ShoppingCartProtocol) {
        self.cart = cart
    }
    
    func processOrder() {
        // Get the total price from the shopping cart
        let totalPrice = cart.getTotal()
        
        // Process the order, e.g. by charging the user's credit card
        processPayment(totalPrice: totalPrice)
        
        // Empty the shopping cart
        emptyCart()
    }
    
    private func processPayment(totalPrice: Double) {
        // Implement your own payment processing logic here
        print("Processing payment of \(totalPrice) dollars...")
    }
    
    private func emptyCart() {
        // Implement your own cart emptying logic here
        print("Emptying shopping cart...")
    }
    
    
}
