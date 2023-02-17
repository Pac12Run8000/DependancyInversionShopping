//
//  ShoppingCart.swift
//  DependancyInversionShopping
//
//  Created by Michelle Grover on 2/17/23.
//

import Foundation


class ShoppingCart:ShoppingCartProtocol {
    
    private var items: [String] = []
    
    func addItem(item: String) {
        items.append(item)
    }
    
    func removeItem(item: String) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
    
    func getTotal() -> Double {
        // Calculate the total price of all items in the cart
        var total: Double = 0
        for item in items {
            total += getPriceForItem(item)
        }
        return total
    }
    
    // Private helper function to get the price of an item
    private func getPriceForItem(_ item: String) -> Double {
        var cost:Double = 0.00
        switch item {
        case "Winning Boxing":
            cost = 285.00
        case "Cleto Reyes":
            cost = 229.00
        case "Title":
            cost = 139.99
        case "Ringside":
            cost = 106.00
        default:
            cost = 60.00
        }
        return cost
    }
}
